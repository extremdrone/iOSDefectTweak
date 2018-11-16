ADDITIONAL_CCFLAGS  = -Qunused-arguments
ARCHS = arm64
TARGET = iphone:clang
GO_EASY_ON_ME = 1
DEBUG = 0

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = iOSDefectDynamicAnalyse
iOSDefectDynamicAnalyse_FILES = Tweak.xmi hooks/Utils.m hooks/SocketClass.m hooks/CustomURLProtocol.m hooks/CCCryptHook.m hooks/SSLWriteHook.m hooks/DelegateProxies.m hooks/KeychainHooks.m

iOSDefectDynamicAnalyse_FRAMEWORKS = UIKit Security Foundation
iOSDefectDynamicAnalyse_LIBRARIES = sqlite3

include $(THEOS_MAKE_PATH)/tweak.mk


