# Maintainer: Tomás Duarte <alfarrofo@gmail.com>
_pkgname=pacman-zfs-hook
pkgname=${_pkgname}
pkgver=1.0.0
pkgrel=1
epoch=
pkgdesc="Pacman ZFS Hook to create ZFS Snapshots on Pacman transactions."
arch=('x86_64')
url="https://github.com/MustachedSquid/Pacman-ZFS-Hook"
license=('MIT')
depends=('bash' 'pacman')
makedepends=()
checkdepends=()
provides=("${_pkgname}")
conflicts=("${_pkgname}")
source=("$pkgname-$pkgver.tar.gz::https://github.com/MustachedSquid/Pacman-ZFS-Hook/releases/download/${pkgver}/${pkgname}-${pkgver}.tar.gz")
sha256sums=("")

package() {
	cd "$pkgname-$pkgver"
    make DESTDIR="$pkgdir" install
}
