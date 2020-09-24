# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v3
# $Header: $

EAPI=6

inherit git-r3 autotools

DESCRIPTION="A flat theme with transparent elements - Neutral Version"
HOMEPAGE="https://github.com/eti0/arc-grey-theme"
SRC_URI=""
EGIT_REPO_URI="https://github.com/eti0/arc-grey-theme.git"
LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE="+gtk2 +gtk3 +transparency -cinnamon -metacity -unity -xfwm -gnome-shell"

DEPEND="dev-vcs/git
x11-themes/gnome-themes-standard
x11-themes/gtk-engines-murrine"
RDEPEND="${DEPEND}"

src_prepare() {
	eautoreconf
	eapply_user
}

src_configure() {
	econf \
		$(use_enable gtk2) \
		$(use_enable gtk3) \
		$(use_enable cinnamon) \
		$(use_enable transparency) \
		$(use_enable metacity) \
		$(use_enable unity) \
		$(use_enable xfwm) \
		$(use_enable gnome-shell)
}
