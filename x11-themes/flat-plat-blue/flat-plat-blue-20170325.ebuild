# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

inherit eutils

DESCRIPTION="A Material Design-like flat (blue) theme for GTK3, GTK2 and GNOME Shell"
HOMEPAGE="https://github.com/peterychuang/Flat-Plat-Blue"
SRC_URI="${HOMEPAGE}/releases/download/3.24.1/Flat-Plat-Blue-${PV}.tar.gz"
KEYWORDS="~*"
S="${WORKDIR}"
RESTRICT="mirror"

LICENSE="LGPL-3.0"
SLOT="0"
IUSE=""

DEPEND="
	x11-libs/gtk+:2
	>=x11-libs/gtk+-3.18:3
	>=x11-themes/gnome-themes-standard-3.18
	x11-libs/gdk-pixbuf
"
RDEPEND="${DEPEND}"

src_install(){
	destdir="${D}" ./install.sh || die "failed to install"
}
