FROM ubuntu:18.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    git \
    cpanminus \
    make \
    xdvik-ja \ 
    evince \
    texlive-lang-cjk \
    texlive-extra-utils \
    latexmk \
    language-pack-ja \
    wget \
    xzdec \
    texlive-latex-extra \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN tlmgr init-usertree
RUN kanji-config-updmap-sys ipaex
