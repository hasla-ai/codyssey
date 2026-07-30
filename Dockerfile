## 1. 베이스 이미지로 NGINX 최신 버전 사용
FROM nginx:latest
##  2. 호스트의 index.html 파일을 컨테이너 내부의 NGINX 기본 웹 경로로 복사
# NGINX의 기본 경로: /usr/share/nginx/html
COPY index.html /usr/share/nginx/html/index.html
# 3. 80번 포트를 외부로 노출하겠다고 명시 (참고용)
EXPOSE 80
