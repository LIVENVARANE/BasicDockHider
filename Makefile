ARCHS = arm64 arm64e
INSTALL_TARGET_PROCESSES = SpringBoard

include $(THEOS)/makefiles/common.mk

PACKAGE_VERSION=1.1.1

TWEAK_NAME = BasicDockHider

BasicDockHider_FILES = Tweak.x
BasicDockHider_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
SUBPROJECTS += bdhprefs
include $(THEOS_MAKE_PATH)/aggregate.mk
