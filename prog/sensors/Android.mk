LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES :=	\
	main.c	\
	chips.c

LOCAL_CFLAGS +=	\
	-D__UCLIBC__

LOCAL_STATIC_LIBRARIES +=	\
	libsensors

LOCAL_C_INCLUDES +=	\
	$(LOCAL_PATH)/../../	\

LOCAL_MODULE := sensors
LOCAL_MODULE_TAGS := eng

include $(BUILD_EXECUTABLE)
