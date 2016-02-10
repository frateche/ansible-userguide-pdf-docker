# Dockerfile for ansible user guide pdf generator

## Description
Based on https://github.com/bonndan/ansible-userguide-pdf.

This dockerfile generates ansible pdf user guide from sources.

## Build
```
git clone https://github.com/frateche/ansible-userguide-pdf-docker
cd ansible-userguide-pdf-docker
docker build -t ansible-pdf-doc .
```

## Run on default branch (1.9)
```
docker run -i -t --volume $PWD/dist:/work/dist --rm ansible-pdf-doc
```

## Run on branch param
```
docker run -i -t --volume $PWD/dist:/work/dist --rm ansible-pdf-doc ./make-pdf.sh stable-2.0
```

## Results
Pdf are build in dist/

## Licence
https://www.gnu.org/licenses/gpl-3.0.txt
