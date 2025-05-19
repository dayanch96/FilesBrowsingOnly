DEBUG = 0
FINALPACKAGE = 1
TARGET := iphone:clang:latest:14.0
INSTALL_TARGET_PROCESSES = Files

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = FilesBrowsingOnly
$(TWEAK_NAME)_FILES = Tweak.x
$(TWEAK_NAME)_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
