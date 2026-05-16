SUMMARY = "My application"
LICENSE = "CLOSED"

DEPENDS += "pkgconfig-native cunit"

SRC_URI = "file://project"

S = "${UNPACKDIR}/project"

inherit cmake pkgconfig