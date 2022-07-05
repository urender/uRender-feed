include $(TOPDIR)/rules.mk

PKG_NAME:=udataplane
PKG_RELEASE:=1

PKG_MAINTAINER:=John Crispin <john@phrozen.org>

include $(INCLUDE_DIR)/package.mk

define Package/udataplane
  SECTION:=utils
  CATEGORY:=Utilities
  TITLE:=Dataplane TC BPF loader
  DEPENDS:=+tc-full +kmod-ifb 
endef

define Package/udataplane/description
	Allow loading cBPF and eBPF programs
endef

define Build/Prepare
	mkdir -p $(PKG_BUILD_DIR)
endef

define Build/Compile/Default

endef
Build/Compile = $(Build/Compile/Default)

define Package/udataplane/install
	$(CP) ./files/* $(1)
endef

$(eval $(call BuildPackage,udataplane))
