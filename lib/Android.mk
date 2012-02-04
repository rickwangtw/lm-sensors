LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

ETCDIR := /etc

LOCAL_SRC_FILES :=	\
	data.c general.c \
   	error.c access.c \
   	init.c sysfs.c	\
	conf-lex.c

LOCAL_CFLAGS +=	\
	-Wall -O -g	\
	-DETCDIR="\"$(ETCDIR)\"" \
	-fpic -D_REENTRANT

LOCAL_STATIC_LIBRARIES +=	\
	libm

LOCAL_MODULE := libsensors
LOCAL_MODULE_TAGS := eng

include $(BUILD_STATIC_LIBRARY)
