FROM python:3.12-slim

RUN apt-get update && apt-get install -y ffmpeg libgstreamer1.0-0 libchromaprint1
RUN pip install beet "beets[autobpm,chroma,lastgenre,web]"

EXPOSE 8337

CMD ["beet"]