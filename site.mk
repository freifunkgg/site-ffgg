#
# GLUON_SITE_PACKAGES modular definition
#


GLUON_FEATURES := \
    autoupdater \
    config-mode-outdoor \
    geolocator \
    hoodselector \
    ebtables-filter-multicast \
    ebtables-filter-ra-dhcp \
    ebtables-source-filter \
    mesh-batman-adv-15 \
    mesh-vpn-fastd \
    radv-filterd \
    respondd \
    status-page \
    web-advanced \
    web-wizard \
    config-mode-geo-location-osm \
    web-osm \
    web-private-wifi \
    web-logging

GLUON_SITE_PACKAGES := \
    iptables \
    gluon-ssid-changer \
    iwinfo \
    respondd-module-airtime \
    ffgg-banner_legacy \
    ffgg-keep-radio-channel \
    ffgg-button-bind \
    ffgg-ath9k-broken-wifi-workaround \
    ffgg-autoupdater-use-site-conf-branch \
    -gluon-web-autoupdater \
    cleanup-gluon-config
    
#   gluon-banner \

#include specific_site.mk file
include $(GLUON_SITEDIR)/specific_site.mk

# Enable multidomain support
GLUON_MULTIDOMAIN := 1

###



########################################################################
# This is the 'Experimental' site branch.
########################################################################

SITE_BRANCH := experimental

########################################################################
# BEGIN: "Generic homebrew build preparation"
########################################################################

# Homebrew Gluon firmware release name

HOMEBREW_GLUON_RELEASE := vHomebrew

# For homebrew development add e.g. date and time
# (Note: Don't use the ':' char. It will break the build)

HOMEBREW_GLUON_RELEASE := $(HOMEBREW_GLUON_RELEASE)-$(SITE_BRANCH)-$(shell date '+%m%d')


########################################################################
# END: "Generic homebrew build preparation"
#
# Admin/Support hint:
# With the few lines above you can identify exactly which branch of our
# site was used to create the homebrew firmware.
########################################################################

###

########################################################################
# Normally the important parameters are specified by the superimposed
# build process (e.g. CI and/or CD).
# If this is not the case the following '?=' assignments apply.
########################################################################

# Autoupdater default branch.
# Allow overriding from the command line.
GLUON_BRANCH ?= $(SITE_BRANCH)

# Gluon release information.
# Allow overriding from the command line.
GLUON_RELEASE ?= $(HOMEBREW_GLUON_RELEASE)

# Default priority for updates.
# Allow overriding from the command line.
GLUON_PRIORITY ?= 0

# Languages to include.
# Allow overriding from the command line.
GLUON_LANGS ?= de en

# Region information for regulatory compliance.
# Allow overriding from the command line.
GLUON_REGION ?= eu

# Build of image types.
# Allow overriding from the command line.
GLUON_DEPRECATED ?= upgrade

###
