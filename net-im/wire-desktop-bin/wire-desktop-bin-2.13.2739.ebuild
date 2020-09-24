# Copyright 1999-2017 AleksTJ
# Ebuild creator: alekstj at gmail dot com

EAPI=5

inherit eutils multilib nsplugins unpacker

DESCRIPTION="Wire: Modern communication, full privacy."
HOMEPAGE="https://wire.com/"
W_BASE_URI="https://wire-app.wire.com/linux/debian/pool/main/wire_${PV}"
SRC_URI="
	amd64? ( ${W_BASE_URI}_amd64.deb -> ${P}-amd64.deb )
	x86? ( ${W_BASE_URI}_i386.deb -> ${P}-i386.deb )
"

LICENSE="GPL3"
SLOT="0"
KEYWORDS="-* ~amd64 ~x86"

RDEPEND="
		media-libs/alsa-lib
		gnome-base/gconf
		x11-libs/gtk+:2
		x11-libs/libXScrnSaver
		x11-libs/libXtst
		x11-misc/xdg-utils
		dev-libs/nss
"

DEPEND=""

S="${WORKDIR}"

src_unpack() {
	unpacker ${A}
}

src_install(){
	cp -Rp ${S}/* "${D}"
}
