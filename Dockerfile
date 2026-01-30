FROM python:3.12-slim

RUN apt-get update && apt-get install -y ffmpeg libgstreamer1.0-0 libchromaprint1
RUN pip install beet "beets[autobpm,chroma,lastgenre,web]"

EXPOSE 8337

ENV BEETSDIR="/config" \
EDITOR="nano" \
HOME="/config"

# ports and volumes
EXPOSE 8337
VOLUME /config
CMD ["beet"]