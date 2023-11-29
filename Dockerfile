FROM python:3.11

COPY . /app

WORKDIR /app

RUN pip install -i https://mirrors.aliyun.com/pypi/simple/ -r requirements.txt

CMD ["python", "/app/main.py"]