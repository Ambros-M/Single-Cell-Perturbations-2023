# Single-Cell-Perturbations-2023
This repository contains my contribution to the [Kaggle Single-Cell Perturbations competition 2023](https://www.kaggle.com/competitions/open-problems-single-cell-perturbations).

The two notebooks should be run in the Docker image:

```
docker build -t scp .
docker run --gpus all --rm -p 8888:8888 scp
# Then connect to the Jupyter notebook from a browser
```

A pre-built Docker image is available at https://hub.docker.com/repository/docker/ambrosm1/scp2023.

Hardware requirements:
- Quadro P400 GPU or better
- 16 GByte RAM

Software requirements:
- Docker Desktop
- see Dockerfile
- see data/requirements.txt

See the [Kaggle post](https://www.kaggle.com/competitions/open-problems-single-cell-perturbations/discussion/458661) for more information.