# Inherit common CM stuff
$(call inherit-product, vendor/cm/config/common.mk)

# Include CM audio files
include vendor/cm/config/cm_audio.mk

# Include CM LatinIME dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/cm/overlay/dictionaries

# Optional CM packages
PRODUCT_PACKAGES += \
    Galaxy4 \
    HoloSpiralWallpaper \
    LiveWallpapers \
    LiveWallpapersPicker \
    MagicSmokeWallpapers \
    NoiseField \
    PhaseBeam \
    VisualizationWallpapers \
    PhotoTable \
    SoundRecorder \
    PhotoPhase

# Extra tools in CM
PRODUCT_PACKAGES += \
    vim \
    zip \
    unrar

LOCAL_CC := $$(TARGET_TOOLCHAIN_ROOT)/../arm-linux-androideabi-4.8/bin/arm-linux-androideabi-gcc$$(HOST_EXECUTABLE_SUFFIX) 
LOCAL_CXX := $$(TARGET_TOOLCHAIN_ROOT)/../arm-linux-androideabi-4.8/bin/arm-linux-androideabi-g++$$(HOST_EXECUTABLE_SUFFIX)
