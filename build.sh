#!/bin/sh

guix shell -L ./ -m manifest.scm -- xelatex template.tex
