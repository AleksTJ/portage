# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

inherit font

DESCRIPTION="MyOffice Font Collection (XO FONTS)"
HOMEPAGE="https://fonts.myoffice.ru"
SRC_URI="${HOMEPAGE}/wp-content/themes/template/fonts_page/files/all_fonts_myoffice.zip"

LICENSE="XO-FONTS" # https://fonts.myoffice.ru/license
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

S=${WORKDIR}

FONT_SUFFIX="ttf"

DEPEND="media-libs/freetype"
RDEPEND="${DEPEND}"

src_install() {
	# move fonts to single folder
	find ${S}/ -type f -name '*.ttf' -exec mv -t ${S} {} +

	font_src_install
}
