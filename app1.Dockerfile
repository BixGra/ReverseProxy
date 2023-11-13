FROM python:3.11

WORKDIR /etc/app1

COPY ./app1 /etc/app1/.

RUN  pip install --upgrade pip && pip --no-cache-dir install fastapi gunicorn uvicorn

ENV PYTHONPATH $PYTHONPATH:$PATH:/etc/app1/

ENV PATH /opt/conda/envs/env/bin:$PATH

ENV PROJECT_PATH /etc/app1/

EXPOSE 8001

ENTRYPOINT gunicorn -b 0.0.0.0:8001 -k uvicorn.workers.UvicornWorker app1:app --threads 2 --workers 1 --timeout 1000 --graceful-timeout 30
