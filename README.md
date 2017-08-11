build: docker build -t demo/timezone .


run: docker run demo/timezone

run (med rigtig timezone): docker run -e CONTAINER_TIMEZONE=Europe/Copenhagen demo/timezone
