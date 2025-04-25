#!/usr/bin/env bash
mkdir /tmp/xelatex-bsuir-std-example-diploma
nix-shell --run 'TMPDIR=/tmp/xelatex-bsuir-std-example-diploma code .'
