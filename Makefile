TARGET = iphone:11.2:11.0
export ARCHS= arm64 arm64e
export THEOS_PACKAGE_SCHEME=rootless

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = StoreSwitcher
$(TWEAK_NAME)_FILES = Tweak.xm SSViewController.m SSTableViewCell.m
$(TWEAK_NAME)_FRAMEWORKS = UIKit

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 AppStore"
