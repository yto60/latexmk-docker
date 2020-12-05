FROM arkark/latexmk:latest

RUN apt-get update && apt-get install -y tzdata

RUN tlmgr option repository https://ftp.kddilabs.jp/CTAN/systems/texlive/tlnet \
    && tlmgr update --self \
    && tlmgr install latexindent

RUN cpan Log::Log4perl \
    YAML/Tiny.pm \
    Log::Dispatch::File \
    File::HomeDir \
    Unicode::GCString

ENV TZ=Asia/Tokyo

COPY .latexmkrc /tmp/latexmk/

# for test
COPY bin/latexmk-ext-test /usr/local/bin/

WORKDIR /workdir

ENTRYPOINT ["entrypoint.sh"]

CMD ["latexmk-ext"]
