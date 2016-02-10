FROM ubuntu

RUN mkdir -p /work/dist
WORKDIR /work
VOLUME /work/dist/

RUN apt-get update
RUN apt-get -y install git python texlive-latex-base texlive-latex-recommended texlive-latex-extra texlive-fonts-recommended python-pip rst2pdf fontconfig

RUN git clone https://github.com/ansible/ansible.git --recursive
RUN git clone http://github.com/bonndan/ansible-userguide-pdf.git
RUN pip install sphinx

COPY ./files/make-pdf.sh /work/

CMD ./make-pdf.sh

