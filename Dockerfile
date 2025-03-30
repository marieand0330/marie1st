# Python 3.9 slim 이미지를 기반으로 사용합니다.
FROM python:3.9-slim

# 작업 디렉토리를 /app으로 설정합니다.
WORKDIR /app

# 현재 폴더의 파일을 Docker 이미지 안 /app으로 복사합니다.
COPY . /app

# requirements.txt에 있는 패키지를 설치합니다.
RUN pip install -r requirements.txt

# 앱을 실행합니다 (Gunicorn으로 Flask 앱 실행).
CMD ["gunicorn", "--bind", "0.0.0.0:5000", "main:app"]
