[![CircleCI](https://circleci.com/gh/singha53/udacity-ML_microservice_kubernetes.svg?style=svg)](https://circleci.com/gh/singha53/udacity-ML_microservice_kubernetes)

## Operationalize a Machine Learning Microservice API. 

Using a pre-trained, `sklearn` model to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project operationalizes a Python flask app in, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.
---

## Setup the Environment

* Create a virtualenv and activate it:
```shell
git clone https://github.com/singha53/udacity-ML_microservice_kubernetes.git
cd udacity-ML_microservice_kubernetes
python3 -m venv venv
source venv/bin/activate
```

* Run `make install` to install the necessary dependencies
* install [docker](https://docs.docker.com/docker-for-mac/install/)
* install hadolint using `brew install hadolint` (mac) to lint Dockerfiles. (test using `make lint`)
* Install VirtualBox using `brew cask install virtualbox` and install Minikube (mac) using `brew install minikube`

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

* Make predictions using `./make_prediction.sh`

### Kubernetes Steps

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally
* Create Flask app in Container
* Run via kubectl
