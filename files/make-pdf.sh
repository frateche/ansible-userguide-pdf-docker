#!/bin/bash
PARM=$1
VERSION=${PARM:=devel}

cd /work/ansible
git pull
git checkout $VERSION
cd /work/ansible-userguide-pdf
git pull
python build-site.py ../ansible/docsite/rst/
cd latex
pdflatex --interaction=nonstopmode ansible.tex
find . -name *.pdf -print -exec cp -v {} /work/dist/ansible_userguide-${VERSION}.pdf \; 
cd /work

