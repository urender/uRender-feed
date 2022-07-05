include $(TOPDIR)/rules.mk

PKG_NAME:=certificates
PKG_RELEASE:=1

PKG_LICENSE:=GPL-2.0
PKG_MAINTAINER:=John Crispin <john@phrozen.org>

include $(INCLUDE_DIR)/package.mk

define Package/certificates
  SECTION:=utils
  CATEGORY:=Utilities
  TITLE:=uRender certificates flash storage
endef

define Build/Prepare
	mkdir -p $(PKG_BUILD_DIR)
endef

define Build/Compile/Default

endef
Build/Compile = $(Build/Compile/Default)

define Package/certificates/install
	$(CP) ./files/* $(1)
endef

$(eval $(call BuildPackage,certificates))
