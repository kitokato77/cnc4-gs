FROM python:3.10-slim

WORKDIR /app
COPY . .

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

EXPOSE 5000
EXPOSE 5001
EXPOSE 5002

CMD ["python", "load_balancer.py"]
