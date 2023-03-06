#
#-- Copyright (C) 2021 dz <dingzhong110@gmail.com>
#

include $(TOPDIR)/rules.mk

LUCI_TITLE:=LuCI Support for easymesh
LUCI_DEPENDS:= +kmod-cfg80211 +batctl-full +kmod-batman-adv +dawn +luci-proto-batman-adv

ifeq ($(CONFIG_PACKAGE_wpad-openssl),y)
LUCI_DEPENDS += +wpad-openssl
else ifeq ($(CONFIG_PACKAGE_wpad-wolfssl),y)
LUCI_DEPENDS += +wpad-wolfssl
else ifeq ($(CONFIG_PACKAGE_wpad-mbedtls),y)
LUCI_DEPENDS += +wpad-mbedtls
else
$(error "You must select a WPAD package")
endif

PKG_VERSION:=2.0

include $(TOPDIR)/feeds/luci/luci.mk

# call BuildPackage - OpenWrt buildroot signature
