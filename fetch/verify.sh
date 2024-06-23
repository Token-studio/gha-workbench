#!/bin/sh

apk add sequoia-sq
sq network wkd fetch pierre@archlinux.org -o release-key.pgp
sq verify --signer-file release-key.pgp --detached archlinux-bootstrap-x86_64.tar.gz.sig archlinux-bootstrap-x86_64.tar.gz
