# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit font

DESCRIPTION="Play TTF Fonts"
HOMEPAGE="https://bitbucket.org/alekstj/play"
SRC_URI="${HOMEPAGE}/downloads/${PN}.zip"

LICENSE="OFL"
SLOT="0"
KEYWORDS="~amd64 ~x86 amd64 x86"
IUSE=""

DEPEND="
	media-libs/freetype"

RDEPEND="${DEPEND}"

S=${WORKDIR}

FONT_SUFFIX="ttf"

pkg_postinst() {
	font_pkg_postinst

	elog "Use for beautiful font."
}
