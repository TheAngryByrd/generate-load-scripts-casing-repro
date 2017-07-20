FROM mono:4.8.0.524

ADD . /app
WORKDIR /app
ENTRYPOINT ["./build.sh"]