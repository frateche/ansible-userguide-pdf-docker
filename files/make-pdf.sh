#!/bin/bash

PARM=$1
VERSION=${PARM:=stable-1.9}

cd /work/ansible &&
git pull && \
git checkout $VERSION && \
cd /work/ansible-userguide-pdf &&
git pull && \
python build-site.py ../ansible/docsite/rst/ && \
cd latex && \
pdflatex --interaction=nonstopmode ansible.tex && \
cp -v ansible.pdf /work/dist/ansible_userguide-${VERSION}.pdf && \
cd /work

