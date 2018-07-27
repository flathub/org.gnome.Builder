#!/usr/bin/env bash

rm -f org.gnome.Builder.flatpak
rm -rf _build ; mkdir _build
rm -rf _repo ; mkdir _repo

flatpak-builder --ccache --force-clean _build org.gnome.Builder.json --repo=_repo --default-branch=stable
flatpak build-bundle _repo org.gnome.Builder.flatpak org.gnome.Builder stable

