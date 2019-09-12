#!/usr/bin/env bash

BRANCH=stable
STATE_DIR="--state-dir=${HOME}/.cache/gnome-builder/flatpak-builder/"

rm -f org.gnome.Builder.flatpak
rm -rf _build ; mkdir _build
rm -rf _repo ; mkdir _repo

flatpak-builder "${STATE_DIR}" --ccache --force-clean _build org.gnome.Builder.json --repo=_repo "--default-branch=${BRANCH}"
flatpak build-bundle _repo org.gnome.Builder.flatpak org.gnome.Builder "${BRANCH}"

