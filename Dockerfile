FROM docker:19.03.2
LABEL "repository"="https://github.com/Kumjami/push-docker-gcr"
LABEL "maintainer"="Kumjami (forked from Dmytro Mykhailov)"

RUN apk update \
  && apk upgrade \
  && apk add --no-cache git

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
