# 도커 컴포즈 설정을 위한 파이썬/Django 샘플 프로젝트

### 요약

```
$ git clone https://github.com/raccoonyy/django-sample-for-docker-compose.git
$ cd django-sample-for-docker-compose
$ docker-compose up
```

### 요구조건

- 도커 엔진 : 1.12.0 이상
- 도커 컴포즈 : 1.6.0 이상

### 실행

1. 저장소 클론

```
$ git clone https://github.com/raccoonyy/django-sample-for-docker-compose.git
```

2. 소스 디렉터리로 이동

```
$ cd django-sample-for-docker-compose
```

3. 컴포즈로 서비스 실행

```
$ docker-compose up
```

### 도커 컴포즈 구성

- docker-compose.yml

도커 컴포즈 명령(`docker-compose`) 실행시 참고하는 설정 모음

- compose/django/Dockerfile-dev

개발용 컨테이너를 만들기 위한 Dockerfile (배포용 Dockerfile과 살짝 다름)
