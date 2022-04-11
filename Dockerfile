FROM alpine:latest
LABEL maintainer="Benjamin Höglinger-Stelzer <nefarius@dhmx.at>"

ENV GIT_REPO=""
ENV GIT_BRANCH="master"
ENV GIT_ORIGIN="origin"
ENV COMMIT_USER="Git Service"
ENV COMMIT_EMAIL="git@example.com"
ENV WORKING_DIR=""
ENV SSH_KEY=""
ENV FILES_TO_COMMIT="."
ENV SLEEP_INTERVAL="600"

RUN apk update --no-cache && \
        apk add git && \
	apk add openssh-client

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
