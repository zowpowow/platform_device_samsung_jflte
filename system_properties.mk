# System Properties
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

# RIL
PRODUCT_PROPERTY_OVERRIDES += \
    rild.libargs=-d /dev/smd0

ifneq ($(TARGET_USES_GPE_RIL), true)
PRODUCT_PROPERTY_OVERRIDES += \
    rild.libpath=/system/lib/libsec-ril.so
else
PRODUCT_PROPERTY_OVERRIDES += \
    rild.libpath=/system/lib/libril-qc-qmi-1.so
endif

PRODUCT_PROPERTY_OVERRIDES += \
    persist.data.ds_fmc_app.mode=0 \
    persist.data_netmgrd_nint=16 \
    persist.omh.enabled=1 \
    persist.radio.add_power_save=1 \
    persist.radio.fill_eons=1 \
    persist.radio.use_se_table_only=1 \
    ro.telephony.mms_data_profile=5 \
    ro.telephony.ril_class=jflteRIL \
    ro.telephony.ril.config=newDriverCallU,newDialCode \
    ro.ril.telephony.mqanelements=6

# audio
PRODUCT_PROPERTY_OVERRIDES += \
    persist.audio.fluence.mode=endfire \
    persist.audio.vr.enable=false \
    persist.audio.handset.mic=digital \
    persist.audio.speaker.location=high \
    ro.qc.sdk.audio.fluencetype=fluence

# charging mode
PRODUCT_PROPERTY_OVERRIDES += \
    ro.enable_boot_charger_mode=1

# display
PRODUCT_PROPERTY_OVERRIDES += \
    ro.hwui.text_cache_width=2048 \
    ro.opengles.version=196608 \
    ro.sf.lcd_density=480

# gps
PRODUCT_PROPERTY_OVERRIDES += \
    ro.gps.agps_provider=1 \
    ro.qc.sdk.izat.premium_enabled=0 \
    ro.qc.sdk.izat.service_mask=0x0 \
    persist.gps.qc_nlp_in_use=0

# media
PRODUCT_PROPERTY_OVERRIDES += \
    mm.enable.smoothstreaming=true \
    qcom.hw.aac.encoder=true

# nitz
PRODUCT_PROPERTY_OVERRIDES += \
    persist.rild.nitz_plmn="" \
    persist.rild.nitz_long_ons_0="" \
    persist.rild.nitz_long_ons_1="" \
    persist.rild.nitz_long_ons_2="" \
    persist.rild.nitz_long_ons_3="" \
    persist.rild.nitz_short_ons_0="" \
    persist.rild.nitz_short_ons_1="" \
    persist.rild.nitz_short_ons_2="" \
    persist.rild.nitz_short_ons_3=""

# qualcomm
PRODUCT_PROPERTY_OVERRIDES += \
    persist.timed.enable=true \
    ro.vendor.extension_library=/system/lib/libqc-opt.so

# recovery
PRODUCT_PROPERTY_OVERRIDES += \
    ro.cwm.enable_key_repeat=true \
    ro.cwm.repeatable_keys=114,115

# wifi
PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface=wlan0
