#!/usr/bin/env python

import cv2
from cv_bridge import CvBridge, CvBridgeError
from sensor_msgs.msg import Image, CompressedImage
from geometry_msgs.msg import Twist
import rospy
try:
    from queue import Queue
except ImportError:
    from Queue import Queue
import threading
import numpy as np

class camera:
    def __init__(self):
        self.image_sub = rospy.Subscriber("/depth_camera/rgb/image_raw", Image, self.callback)
        cv2.namedWindow("CameraView", cv2.WINDOW_NORMAL)
        cv2.resizeWindow("CameraView", 800,600)

    def processImage(self, img):
        rows, cols = img.shape[:2]
        R,G,B = self.convert2rgb(img)
        redMask = self.thresholdBinary(R, (220, 255))

        stackedMask = np.dstack((redMask, redMask, redMask))
        contourMask = stackedMask.copy()
        crosshairMask = stackedMask.copy()

        # hsvFrame = cv2.cvtColor(img, cv2.COLOR_RGB2HSV)
        # red_lower = np.array([130, 87, 111], np.uint8)
        # red_upper = np.array([180, 255, 255], np.uint8)
        # red_mask = cv2.inRange(hsvFrame, red_lower, red_upper)



        (_, contours,hierarchy) = cv2.findContours(redMask, 1, cv2.CHAIN_APPROX_NONE)

        if len(contours) > 0:
            
            c = max(contours, key=cv2.contourArea)
            M = cv2.moments(c)

            # Make sure that "m00" won't cause ZeroDivisionError: float division by zero
            if M["m00"] != 0:
                cx = int(M["m10"] / M["m00"])
                cy = int(M["m01"] / M["m00"])
            else:
                cx, cy = 0, 0

            # Show contour and centroid
            cv2.drawContours(contourMask, contours, -1, (0,255,0), 10)
            cv2.circle(contourMask, (cx, cy), 5, (0, 255, 0), -1)

            # Show crosshair and difference from middle point
            cv2.line(crosshairMask,(cx,0),(cx,rows),(0,0,255),10)
            cv2.line(crosshairMask,(0,cy),(cols,cy),(0,0,255),10)

            rospy.loginfo("RED OBJECT DETECTED")
        # Return processed frames

        return redMask, contourMask, crosshairMask

    def callback(self,data):
        bridge = CvBridge()

        try:
            cv_image = bridge.imgmsg_to_cv2(data, desired_encoding="bgr8")
        except CvBridgeError as e:
            rospy.logerr(e)

        image = cv_image
        _, contour, crosshair = self.processImage(image)
        # crosshair = self.processImage(image)

        result = self.addSmallPictures(image, [contour, crosshair])
        cv2.imshow("CameraView", result) 

        cv2.waitKey(3)
        
    def convert2rgb(self, img):
        R = img[:, :, 2]
        G = img[:, :, 1]
        B = img[:, :, 0]

        return R, G, B
    
    # Apply threshold and result a binary image
    def thresholdBinary(self, img, thresh=(-100, 255)):
        binary = np.zeros_like(img)
        binary[(img >= thresh[0]) & (img <= thresh[1])] = 1

        return binary*255

    def addSmallPictures(self, img, small_images, size=(160, 120)):
        '''
        :param img: main image
        :param small_images: array of small images
        :param size: size of small images
        :return: overlayed image
        '''

        x_base_offset = 90
        y_base_offset = 10

        x_offset = x_base_offset
        y_offset = y_base_offset

        for small in small_images:
            small = cv2.resize(small, size)
            if len(small.shape) == 2:
                small = np.dstack((small, small, small))

            img[y_offset: y_offset + size[1], x_offset: x_offset + size[0]] = small

            x_offset += size[0] + x_base_offset

        return img



def main():
  camera()
  
  try:
    rospy.spin()
  except KeyboardInterrupt:
    rospy.loginfo("Shutting down")
  
  cv2.destroyAllWindows()

if __name__ == '__main__':
    rospy.init_node('camera_read', anonymous=False)
    main()