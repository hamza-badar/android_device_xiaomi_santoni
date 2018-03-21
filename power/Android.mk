LOCAL_PATH := $(call my-dir)

<<<<<<< HEAD
=======
ifeq ($(call is-vendor-board-platform,QCOM),true)

>>>>>>> f2a9c19... santoni: Import CAF power HAL
# HAL module implemenation stored in
# hw/<POWERS_HARDWARE_MODULE_ID>.<ro.hardware>.so
include $(CLEAR_VARS)

LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_SHARED_LIBRARIES := liblog libcutils libdl libxml2
<<<<<<< HEAD
LOCAL_SRC_FILES := power.c metadata-parser.c utils.c list.c hint-data.c powerhintparser.c power-8953.c
=======
LOCAL_SRC_FILES := power.c metadata-parser.c utils.c list.c hint-data.c powerhintparser.c power-8937.c
>>>>>>> f2a9c19... santoni: Import CAF power HAL
LOCAL_C_INCLUDES := external/libxml2/include \
                    external/icu/icu4c/source/common

ifeq ($(TARGET_USES_INTERACTION_BOOST),true)
    LOCAL_CFLAGS += -DINTERACTION_BOOST
endif

<<<<<<< HEAD
LOCAL_MODULE := power.$(TARGET_BOARD_PLATFORM)
=======
LOCAL_MODULE := power.qcom
>>>>>>> f2a9c19... santoni: Import CAF power HAL
LOCAL_MODULE_TAGS := optional
LOCAL_CFLAGS += -Wno-unused-parameter -Wno-unused-variable
LOCAL_VENDOR_MODULE := true
include $(BUILD_SHARED_LIBRARY)
<<<<<<< HEAD
=======

endif
>>>>>>> f2a9c19... santoni: Import CAF power HAL
