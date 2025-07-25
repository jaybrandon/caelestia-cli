#!/usr/bin/env fish

pipx uninstall caelestia

find dist -mindepth 1 -delete

python -m build --wheel

pipx install dist/*.whl
