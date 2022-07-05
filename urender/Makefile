include $(TOPDIR)/rules.mk

PKG_NAME:=urender
PKG_RELEASE:=1

PKG_SOURCE_URL=https://github.com/urender/urender.git
PKG_MIRROR_HASH:=ac4c2df5b0863b2976fcf4c0e004fe8507183be666e25d159f4e3926ea561741
PKG_SOURCE_PROTO:=git
PKG_SOURCE_DATE:=2022-03-07
PKG_SOURCE_VERSION:=74c4e8606fc06106c8049f49aff04674439adedf

PKG_MAINTAINER:=John Crispin <john@phrozen.org>
PKG_LICENSE:=ISC

include $(INCLUDE_DIR)/package.mk

define Package/urender
  SECTION:=utils
  CATEGORY:=Utilities
  TITLE:=UCI renderer
  DEPENDS+=+ucode-mod-nl80211 +ucode-mod-rtnl +ip-full +ip-bridge +ratelimit
endef

define Package/urender-mod-igmpproxy
  SECTION:=utils
  CATEGORY:=Utilities
  TITLE:=UCI renderer (IGMP plugin)
  DEPENDS+=urender +igmpproxy
endef

define Package/urender-mod-lldp
  SECTION:=utils
  CATEGORY:=Utilities
  TITLE:=UCI renderer (LLDP plugin)
  DEPENDS+=urender +ulldpd
endef

define Package/urender-mod-mdns
  SECTION:=utils
  CATEGORY:=Utilities
  TITLE:=UCI renderer (MDNS plugin)
  DEPENDS+=urender +umdns
endef

define Package/urender-mod-mesh
  SECTION:=utils
  CATEGORY:=Utilities
  TITLE:=UCI renderer (Mesh/Batman plugin)
  DEPENDS+=urender +kmod-batman-adv
endef

define Package/urender-mod-qosify
  SECTION:=utils
  CATEGORY:=Utilities
  TITLE:=UCI renderer (QoS plugin)
  DEPENDS+=urender +qosify
endef

define Package/urender-mod-gps
  SECTION:=utils
  CATEGORY:=Utilities
  TITLE:=UCI renderer (GPS plugin)
  DEPENDS+=urender +ugps +kmod-usb-acm
endef

define Package/urender-mod-unet
  SECTION:=utils
  CATEGORY:=Utilities
  TITLE:=UCI renderer (unetd plugin)
  DEPENDS+=urender +unetd
endef

define Package/urender-mod-data-plane
  SECTION:=utils
  CATEGORY:=Utilities
  TITLE:=UCI renderer (data-plane plugin)
  DEPENDS+=urender +udataplane
endef

define Package/urender-mod-ieee8021x
  SECTION:=utils
  CATEGORY:=Utilities
  TITLE:=UCI renderer (IEEE8021x plugin)
  DEPENDS+=urender +ieee8021x
endef

define Package/urender-mod-usteer
  SECTION:=utils
  CATEGORY:=Utilities
  TITLE:=UCI renderer (uSteer plugin)
  DEPENDS+=urender +usteer
endef

define Package/urender-mod-switch
  SECTION:=utils
  CATEGORY:=Utilities
  TITLE:=UCI renderer (switch plugin)
  DEPENDS+=urender +ustp +switch-fabric
endef

define Build/Compile

endef

define Package/urender/install
	$(INSTALL_DIR) $(1)/usr/share/urender $(1)/etc/urender/
	$(CP) $(PKG_BUILD_DIR)/generated/schemareader.uc $(1)/usr/share/urender
	$(CP) $(PKG_BUILD_DIR)/renderer/* $(1)/usr/share/urender
	$(CP) $(PKG_BUILD_DIR)/system/*.uc $(1)/usr/share/urender
	$(CP) ./files/* $(1)
endef

define Package/urender-mod-igmpproxy/install
	$(INSTALL_DIR) $(1)/etc/uci-defaults/
	$(CP) ./modules/igmpproxy.defaults $(1)/etc/uci-defaults/98-urender-igmpproxy
endef

define Package/urender-mod-lldp/install
	$(INSTALL_DIR) $(1)/etc/uci-defaults/ $(1)/usr/share/urender/templates/services/
	$(CP) ./modules/lldp.defaults $(1)/etc/uci-defaults/zzz-urender-lldp
	$(CP) $(PKG_BUILD_DIR)/generated/schemaServiceLldp.uc $(1)/usr/share/urender
	$(CP) $(PKG_BUILD_DIR)/modules/lldp/* $(1)/usr/share/urender/templates/services/
endef

define Package/urender-mod-mdns/install
	$(INSTALL_DIR) $(1)/etc/uci-defaults/ $(1)/usr/share/urender/templates/services/
	$(CP) ./modules/mdns.defaults $(1)/etc/uci-defaults/zzz-urender-mdns
	$(CP) $(PKG_BUILD_DIR)/generated/schemaServiceMdns.uc $(1)/usr/share/urender
	$(CP) $(PKG_BUILD_DIR)/modules/mdns/* $(1)/usr/share/urender/templates/services/
endef

define Package/urender-mod-qosify/install
	$(INSTALL_DIR) $(1)/etc/uci-defaults/ $(1)/usr/share/urender/templates/services/
	$(CP) ./modules/qos.defaults $(1)/etc/uci-defaults/zzz-urender-qos
	$(CP) $(PKG_BUILD_DIR)/generated/schemaServiceQualityOfService.uc $(1)/usr/share/urender
	$(CP) $(PKG_BUILD_DIR)/modules/qos/* $(1)/usr/share/urender/templates/services/
endef

define Package/urender-mod-gps/install
	$(INSTALL_DIR) $(1)/usr/share/urender/templates/services/
	$(CP) $(PKG_BUILD_DIR)/generated/schemaServiceGps.uc $(1)/usr/share/urender
	$(CP) $(PKG_BUILD_DIR)/modules/gps/* $(1)/usr/share/urender/templates/services/
endef

define Package/urender-mod-unet/install
	$(INSTALL_DIR) $(1)/usr/share/urender/templates/services/
	$(CP) $(PKG_BUILD_DIR)/generated/schemaServiceUnet.uc $(1)/usr/share/urender
	$(CP) $(PKG_BUILD_DIR)/modules/unetd/* $(1)/usr/share/urender/templates/services/
endef

define Package/urender-mod-data-plane/install
	$(INSTALL_DIR) $(1)/usr/share/urender/templates/services/
	$(CP) $(PKG_BUILD_DIR)/generated/schemaServiceDataPlane.uc $(1)/usr/share/urender
	$(CP) $(PKG_BUILD_DIR)/modules/data-plane/* $(1)/usr/share/urender/templates/services/
endef

define Package/urender-mod-ieee8021x/install
	$(INSTALL_DIR) $(1)/usr/share/urender/templates/services/
	$(CP) $(PKG_BUILD_DIR)/generated/schemaServiceIeee8021x.uc $(1)/usr/share/urender
	$(CP) $(PKG_BUILD_DIR)/modules/ieee8021x/* $(1)/usr/share/urender/templates/services/
endef

define Package/urender-mod-usteer/install
	$(INSTALL_DIR) $(1)/usr/share/urender/templates/services/
	$(CP) $(PKG_BUILD_DIR)/generated/schemaServiceWifiSteering.uc $(1)/usr/share/urender
	$(CP) $(PKG_BUILD_DIR)/modules/usteer/* $(1)/usr/share/urender/templates/services/
endef

define Package/urender-mod-switch/install
	$(INSTALL_DIR) $(1)/usr/share/urender/templates/services/
	$(CP) $(PKG_BUILD_DIR)/generated/schemaSwitch.uc $(1)/usr/share/urender
	$(CP) $(PKG_BUILD_DIR)/modules/switch/* $(1)/usr/share/urender/templates/
endef

define Package/urender-mod-mesh/install
	$(INSTALL_DIR) $(1)/etc/uci-defaults/
endef

$(eval $(call BuildPackage,urender))
$(eval $(call BuildPackage,urender-mod-igmpproxy))
$(eval $(call BuildPackage,urender-mod-lldp))
$(eval $(call BuildPackage,urender-mod-mdns))
$(eval $(call BuildPackage,urender-mod-mesh))
$(eval $(call BuildPackage,urender-mod-qosify))
$(eval $(call BuildPackage,urender-mod-gps))
$(eval $(call BuildPackage,urender-mod-unet))
$(eval $(call BuildPackage,urender-mod-data-plane))
$(eval $(call BuildPackage,urender-mod-ieee8021x))
$(eval $(call BuildPackage,urender-mod-usteer))
$(eval $(call BuildPackage,urender-mod-switch))
