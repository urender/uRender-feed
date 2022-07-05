include $(TOPDIR)/rules.mk

PKG_NAME:=ulldpd
PKG_RELEASE:=1

PKG_LICENSE:=GPL-2.0
PKG_MAINTAINER:=John Crispin <john@phrozen.org>

PKG_SOURCE_URL=https://github.com/blogic/ulldpd.git
PKG_MIRROR_HASH:=d1c95b4fa12a9e7ca6bb3473b1ebcb54fb1fe82c46f472c5435208b085c83b5d
PKG_SOURCE_PROTO:=git
PKG_SOURCE_DATE:=2022-03-07
PKG_SOURCE_VERSION:=8720ec00e95e3e76ea1e58c44973f98c54825a60

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/ulldpd
  SECTION:=net
  CATEGORY:=Network
  TITLE:=OpenWrt LLDP Daemon
  DEPENDS:=+libubox +libubus +libblobmsg-json +libuci
endef

define Package/ulldpd/install
	$(INSTALL_DIR) $(1)/usr/sbin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/ulldpd $(1)/usr/sbin/
	$(CP) ./files/* $(1)
endef

$(eval $(call BuildPackage,ulldpd))
