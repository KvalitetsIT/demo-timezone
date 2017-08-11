FROM openjdk:8u131-jdk-alpine
RUN apk update && apk add --update gettext tzdata
COPY  entrypoint.sh /
RUN chmod +x entrypoint.sh
ENTRYPOINT [ "/entrypoint.sh" ]
