FROM python:alpine
ENV PYTHONUNBUFFERED=1

ENV PYTHONDONTWRITEBYTECODE=1
WORKDIR /telegram_bot
ENV key=6304312210:AAHi7QFm33MiXTlzestqdmfjJ5y2FZoWgMM
COPY ./requirements.txt ./
EXPOSE 80
RUN pip install --upgrade pip

RUN pip install --no-cache-dir -r ./requirements.txt

COPY ./ ./

CMD ["python", "main.py"]