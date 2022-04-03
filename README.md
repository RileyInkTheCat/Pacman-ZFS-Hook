# Pacman-ZFS-Hook
Pacman ZFS Hook to create ZFS Snapshots on Pacman transactions.

## Installing

Install it from the [Arch User Repository](https://aur.archlinux.org/packages/pacman-zfs-hook)

## Usage

Every time you install, update or remove a package `pacman-zfs-hook` will look for your ZFS BOOTFS and create a snapshot with the current timestamp.
