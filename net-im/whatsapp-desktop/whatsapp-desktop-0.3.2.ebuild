# Copyright 1999-2017 AleksTJ
# Ebuild creator: alekstj at gmail dot com

EAPI=5

inherit eutils multilib nsplugins

DESCRIPTION="Unofficial WhatsApp Web Desktop Client for Linux."
HOMEPAGE="https://github.com/bcalik/Whatsapp-Desktop"
SRC_URI="${HOMEPAGE}/releases/download/v${PV}/WhatsApp-linux-x64.zip"

LICENSE="GPL2"
SLOT="0"
KEYWORDS="~amd64 amd64"

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

src_install(){
	doicon "${FILESDIR}/${PN}.png"
    domenu "${FILESDIR}/${PN}.desktop"
	dodir /opt/${PN}
	cp -Rp ${S}/WhatsApp-linux-x64/* "${D}/opt/${PN}/"
}
