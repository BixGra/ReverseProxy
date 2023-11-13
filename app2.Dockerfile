FROM python:3.11

WORKDIR /etc/app2

COPY ./app2 /etc/app2/.

RUN  pip install --upgrade pip && pip --no-cache-dir install fastapi gunicorn uvicorn

ENV PYTHONPATH $PYTHONPATH:$PATH:/etc/app2/

ENV PATH /opt/conda/envs/env/bin:$PATH

ENV PROJECT_PATH /etc/app2/

EXPOSE 8002

ENTRYPOINT gunicorn -b 0.0.0.0:8002 -k uvicorn.workers.UvicornWorker app2:app --threads 2 --workers 1 --timeout 1000 --graceful-timeout 30
