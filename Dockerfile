FROM python:3.10.12-slim-buster
WORKDIR /app
COPY . .
RUN pip install -r requirements.txt

RUN chmod +x /app/entrypoint.sh

ENTRYPOINT ["/app/entrypoint.sh" ]