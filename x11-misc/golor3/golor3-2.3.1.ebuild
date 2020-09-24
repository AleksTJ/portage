# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit meson

DESCRIPTION="A simple color chooser written in GTK3 (like gcolor2)"
HOMEPAGE="https://github.com/Hjdskes/gcolor3"
SRC_URI="https://github.com/Hjdskes/gcolor3/archive/v${PV}.zip"

LICENSE="LGPL-2.1+"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="x11-libs/gtk+"
RDEPEND="${DEPEND}"


src_configure() {
	local emesonargs=(
		-Denable-werror=false
	)
	meson_src_configure
}
