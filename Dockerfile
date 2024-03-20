FROM python

WORKDIR /app

COPY . .

CMD ["python", "example.py"]