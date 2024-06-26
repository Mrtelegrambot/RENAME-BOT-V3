FROM python:3.9
WORKDIR /app
COPY requirements.txt /app
RUN apt update && apt upgrade -y
RUN apt install git python3-pip ffmpeg -y
COPY . .
RUN pip install -r requirements.txt
COPY . /app
CMD python bot.py
