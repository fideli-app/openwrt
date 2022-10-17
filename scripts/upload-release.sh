#!/bin/sh

_version="${1:-22.03-SNAPSHOT}"
rsync --info=progress2 -ac --delete \
    --exclude 'targets/**/*-imagebuilder-*' \
    --exclude 'targets/**/*-initramfs-*' \
    --exclude 'targets/**/*-squashfs-*' \
    --exclude 'targets/**/*-toolchain-*' \
    bin/ tekadom@node-01.sitewithme.com:/home/tekadom/web/openwrt.tek.sh/public_html/releases/${_version}/
