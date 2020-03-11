include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = bdhPrefs

bdhPrefs_FILES = BDHRootListController.m
bdhPrefs_INSTALL_PATH = /Library/PreferenceBundles
bdhPrefs_FRAMEWORKS = UIKit
bdhPrefs_PRIVATE_FRAMEWORKS = Preferences
bdhPrefs_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/bdhPrefs.plist$(ECHO_END)
