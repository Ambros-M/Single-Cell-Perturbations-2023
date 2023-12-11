# FROM jupyter/base-notebook:2023-05-30 # Python 3.10 without GPU
FROM cschranz/gpu-jupyter:v1.5_cuda-11.6_ubuntu-20.04_slim
COPY --chown=1000:100 --chmod=0777 data/*  /home/jovyan/data/
COPY --chown=1000:100 --chmod=0777 notebooks/*.ipynb /home/jovyan/notebooks/
RUN chmod 0777  /home/jovyan/data/
# RUN pip install cupy-cuda11x numpy pandas matplotlib scikit-learn scipy scanpy plotly pyarrow py-boost
# RUN pip freeze > /home/jovyan/data/requirements.txt
RUN pip install -r /home/jovyan/data/requirements.txt
EXPOSE 8888