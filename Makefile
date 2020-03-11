INSTALL_TARGET_PROCESSES = SpringBoard

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = BasicDockHider

BasicDockHider_FILES = Tweak.x
BasicDockHider_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
SUBPROJECTS += bdhprefs
include $(THEOS_MAKE_PATH)/aggregate.mk
