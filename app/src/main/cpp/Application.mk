APP_STL := gnustl_static

# Allow the use of c ++ 11 function function
NDK_TOOLCHAIN_VERSION=4.8
APP_CPPFLAGS := -std=c++11 

#APP_CPPFLAGS += -pthread
#APP_STL  := stlport_static

# Allow exception type and runtime type recognition
APP_CPPFLAGS += -frtti -fexceptions 


APP_ABI := armeabi-v7a 
#APP_ABI := armeabi armeabi-v7a x86 #（or APP_ABI := all）

APP_PLATFORM := android-19