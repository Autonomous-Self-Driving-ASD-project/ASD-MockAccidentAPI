FROM python:3.12

RUN useradd -m appuser
USER appuser

WORKDIR /app

COPY . /app

RUN pip install -r requirements.txt && chown -R appuser /app


ENTRYPOINT ["python3", "-m"]
CMD ["flask", "run"]
EXPOSE 5000
