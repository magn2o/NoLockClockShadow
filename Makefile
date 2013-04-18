export ARCHS=armv7
include $(THEOS)/makefiles/common.mk

TWEAK_NAME = NoLockClockShadow
NoLockClockShadow_FILES = Tweak.xm
NoLockClockShadow_FRAMEWORKS = UIKit

include $(THEOS_MAKE_PATH)/tweak.mk
