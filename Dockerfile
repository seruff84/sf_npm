FROM python

WORKDIR /app

COPY . .

RUN pip install -r requirements.txt

CMD ["python3", "sf_test_app.py"]
