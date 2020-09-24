# $Header: $

EAPI=2
inherit cmake-utils games

DESCRIPTION="INSTEAD quest engine"
HOMEPAGE="http://instead.sf.net/"
SRC_URI="mirror://sourceforge/${PN}/${PN}_${PV}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="=dev-lang/lua-5.1*
   media-libs/libsdl
   media-libs/sdl-mixer
   media-libs/sdl-image
   media-libs/sdl-ttf"
RDEPEND="${DEPEND}"

src_configure() {
  mycmakeargs=(
    -DCMAKE_INSTALL_PREFIX=""
    -DBINDIR=${GAMES_BINDIR}
    -DDATADIR=${GAMES_DATADIR}/${PN}
    -DSHAREDIR=${GAMES_DATADIR}/${PN}
    -DDOCDIR=${GAMES_DATADIR}/doc/${PN}
    -DICONDIR=/usr/share/pixmaps
    -DMANDIR=/usr/share/man
    -DDESKTOPDIR=/usr/share/applications
    )
   cmake-utils_src_configure
}

src_compile() {
   cmake-utils_src_compile
}

src_install() {
   cmake-utils_src_install
}

