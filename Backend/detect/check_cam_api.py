import cv2
import numpy as np
from cv2 import dnn
import urllib.request

from datetime import timedelta, datetime,date
url='http://192.168.137.218/cam-lo.jpg'
while True:
    img=urllib.request.urlopen(url)
    img_np= np.array(bytearray(img.read()),dtype=np.uint8)
    frame=cv2.imdecode(img_np,-1)
    cv2.imshow("frame", frame)
    key = cv2.waitKey(100) & 0xFF
    if key == ord('q'):
            break
cv2.destroyAllWindows()