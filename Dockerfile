# 1. 베이스 이미지 선택 (NGINX 최신 버전)
FROM nginx:latest

# 2. 내가 만든 index.html을 컨테이너 내부의 웹 서버 경로로 복사
COPY index.html /usr/share/nginx/html/index.html

# 3. (선택) 환경 변수 설정 예시
ENV SERVER_NAME="My-Docker-Server"

# 4. 컨테이너가 사용할 포트 명시
EXPOSE 80