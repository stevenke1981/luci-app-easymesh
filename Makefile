#
#-- Copyright (C) 2021 dz <dingzhong110@gmail.com>
#

include $(TOPDIR)/rules.mk

LUCI_TITLE := LuCI Support for easymesh
LUCI_DEPENDS_BASE := +kmod-cfg80211 +batctl-full +kmod-batman-adv +dawn +luci-proto-batman-adv +wpad-mbedtls
PKG_VERSION := 2.0


include $(TOPDIR)/feeds/luci/luci.mk

# call BuildPackage - OpenWrt buildroot signature
