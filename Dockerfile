FROM alpine

RUN apk --no-cache --purge add git openssh curl bash jq

RUN git config --global user.name "FINT" && \
    git config --global user.email "fint@fintlabs.no"

COPY git-pr.sh /usr/bin/git-pr

RUN chmod +x /usr/bin/git-pr
