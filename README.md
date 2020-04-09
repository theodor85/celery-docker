## How to build
```
docker build --tag celery_ubuntu .
```

## How to run
```
docker run -it --name ubuntu_container -v "$(pwd)"/django_app:/django_app -p 8000:8000 celery_ubuntu
```