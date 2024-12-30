FROM python:3.12

RUN apt-get update && apt-get -y install curl unzip && rm -rf /var/lib/apt/lists/*
COPY requirements.txt /tmp/requirements.txt
RUN pip install --no-cache-dir --upgrade -r /tmp/requirements.txt

WORKDIR /app

EXPOSE 8080
CMD ["uvicorn", "main:fastapi_app", "--host", "0.0.0.0", "--port", "8080", "--reload"]
