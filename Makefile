TARGET = iphone:clang:latest
SDK = iPhoneOS8.1
ARCHS = armv7 arm64

include theos/makefiles/common.mk

TWEAK_NAME = EnableCCMute
EnableCCMute_FILES = Tweak.xm
EnableCCMute_FRAMEWORKS = UIKit
EnableCCMute_CFLAGS = -Wno-error
EnableCCMute += -Wl,-segalign,4000
CFLAGS = -Wno-deprecated -Wno-deprecated-declarations -Wno-error

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
