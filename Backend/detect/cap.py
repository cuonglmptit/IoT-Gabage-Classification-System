import cv2
import numpy as np
from cv2 import dnn
from numpy.lib.type_check import imag
from keras.preprocessing.image import img_to_array
from tensorflow.python.framework.ops import device
import tensorflow as tf
import base64
from datetime import datetime
import urllib.request
from keras.preprocessing import image
import numpy as np
from keras.applications.mobilenet_v2 import preprocess_input
from keras.models import load_model
from keras.preprocessing.image import load_img , img_to_array
from imutils.video import WebcamVideoStream
from imutils.video import FPS
import time
# import schedule
import time
from datetime import timedelta, datetime,date
classes = ['Box_cardboard_paper',  'glass_metal_plastic', 'organic','other']
# img_file="/content/drive/MyDrive/garbage/Garbage classification/Garbage classification/glass_metal_plastic/Plastico_480.jpg"
# model = load_model("detect/model_mobinetv2_35_epoch.h5")

# process an image to be mobilenet friendly
# def process_image(img_path):
#   img = load_img(img_path, target_size=(224, 224))
#   img_array = img_to_array(img)
  
#   img_array = np.expand_dims(img_array, axis=0)
#   pImg = preprocess_input(img_array)
#   return pImg
# http://192.168.201.117
#   /cam-lo.jpg
#   /cam-hi.jpg
#   /cam-mid.jpg

url='http://192.168.137.120/cam-mid.jpg'
def save_img(filename,img):
  cv2.imwrite(filename,img)
while True:
    # ret,frame=cam.read()
    img=urllib.request.urlopen(url)
    img_np= np.array(bytearray(img.read()),dtype=np.uint8)
    frame=cv2.imdecode(img_np,-1)
    box=[5,5,260,220]
    key = cv2.waitKey(10) & 0xFF
    if box is not None:
      (x,y,w,h) =box[0],box[1], box[2],box[3]
      img=frame[y:h, x:w]
      img1 = cv2.resize(img,(224,224))
      img2 = cv2.resize(img,(256,256))
      if key == ord('p'):
        save_img('quat'+datetime.now().strftime("%Y-%m-%d_%H-%M-%S")+'.jpg', frame)
    cv2.imshow("Bam 'p' de cap", frame)
    if key == ord('q'):
            break
# cam.release()
cv2.destroyAllWindows()