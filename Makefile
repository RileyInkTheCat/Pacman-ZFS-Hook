all:
	echo 'Run "make install" to install Pacman-ZFS-Hook'

install:
	mkdir -p $(DESTDIR)/usr/share/libalpm/{hooks,scripts}
	mkdir -p $(DESTDIR)/usr/share/{doc/pacman-zfs-hook,licenses/pacman-zfs-hook}
	cp scripts/zfs-snap-pac $(DESTDIR)/usr/share/libalpm/scripts
	cp hooks/01-zfs-snap-pac.hook $(DESTDIR)/usr/share/libalpm/hooks
	chmod 755 $(DESTDIR)/usr/share/libalpm/scripts/zfs-snap-pac
	cp LICENSE $(DESTDIR)/usr/share/licenses/pacman-zfs-hook
	cp README.md $(DESTDIR)/usr/share/doc/pacman-zfs-hook

uninstall:
	rm -rf $(DESTDIR)/usr/share/doc/pacman-zfs-hook
	rm -rf $(DESTDIR)/usr/share/licenses/pacman-zfs-hook
	rm -f $(DESTDIR)/usr/share/libalpm/hooks/01-zfs-snap-pac.hook
	rm -f $(DESTDIR)/usr/share/libalpm/scripts/zfs-snap-pac

.PHONY: install uninstall all
