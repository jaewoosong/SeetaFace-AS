# Find the source file and define the directory path where the local file is located
# CLEAR_VARS provided by the compilation system, letting GNU MAKEFILE clear LOCAL_PATH
# All other LOCAL_XXX variables

LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

# OpenCV is not required
#include D:\workspace\OpenCV-android-sdk\sdk\native\jni\opencv.mk
#OPENCV_INSTALL_MODULES:=on
#OPENCV_CAMERA_MODULES:=off
#OPENCV_LIB_TYPE:=STATIC
  
LOCAL_MODULE := SeetafaceSo  
LOCAL_LDLIBS += -llog -ljnigraphics  
LOCAL_CFLAGS += -O3 -fstrict-aliasing -fprefetch-loop-arrays
  
LOCAL_C_INCLUDES := $(LOCAL_PATH)/FaceDetection/include \
$(LOCAL_PATH)/FaceIdentification/include \
$(LOCAL_PATH)/FaceAlignment/include  
				 					  	   		  	  
LOCAL_SRC_FILES := FaceDetection/src/face_detection.cpp \
FaceDetection/src/fust.cpp \
FaceDetection/src/util/image_pyramid.cpp \
FaceDetection/src/util/nms.cpp \
FaceDetection/src/feat/lab_feature_map.cpp \
FaceDetection/src/feat/surf_feature_map.cpp \
FaceDetection/src/io/lab_boost_model_reader.cpp \
FaceDetection/src/io/surf_mlp_model_reader.cpp \
FaceDetection/src/classifier/lab_boosted_classifier.cpp \
FaceDetection/src/classifier/mlp.cpp   \
FaceDetection/src/classifier/surf_mlp.cpp \
FaceAlignment/cfan.cpp  \
FaceAlignment/face_alignment.cpp \
FaceAlignment/sift.cpp \
FaceIdentification\src\bias_adder_net.cpp \
FaceIdentification\src\blob.cpp \
FaceIdentification\src\bn_net.cpp \
FaceIdentification\src\common_net.cpp \
FaceIdentification\src\conv_net.cpp \
FaceIdentification\src\eltwise_net.cpp \
FaceIdentification\src\inner_product_net.cpp \
FaceIdentification\src\log.cpp \
FaceIdentification\src\math_functions.cpp \
FaceIdentification\src\max_pooling_net.cpp \
FaceIdentification\src\net.cpp \
FaceIdentification\src\pad_net.cpp \
FaceIdentification\src\spatial_transform_net.cpp \
FaceIdentification\src\tform_maker_net.cpp \
FaceIdentification\tools\aligner.cpp \
FaceIdentification\tools\face_identification.cpp \
Seetaface_JniClient.cpp \
CMImgProc.cpp 
    
include $(BUILD_SHARED_LIBRARY)
      