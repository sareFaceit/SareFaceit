FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt .
RUN pip3 install --no-cache-dir -r requirements.txt

COPY bot.py .
COPY card_generator.py .

CMD ["python3", "bot.py"]
