# 🐳 Codyssey - Docker NGINX 학습 프로젝트

Docker & OrbStack 기반 커스텀 NGINX 웹 서버 구축 및 검증 보고서:
  이 프로젝트는 Docker와 NGINX를 활용하여 웹 서버를 구축하고, GitHub과 연동하여 소스 코드를 관리하는 학습용 프로젝트입니다. 본 기술 문서는 macOS(OrbStack) 환경에서 Docker를 활용하여 권한 관리, 컨테이너 가상화, 커스텀 NGINX 웹 서버 이미지 빌드, 포트 매핑, 바인드 마운트 및 볼륨 영속성 검증, Docker Compose 오케스트레이션, Git 버전 관리까지 수행한 전체 실습 과정 및 검증 결과를 기록한 문서입니다.

## 🚀 주요 기능 및 학습 내용
- **Docker NGINX**: NGINX 이미지를 기반으로 한 웹 서버 컨테이너 구축
- **Docker Compose**: 여러 컨테이너 설정을 한 번에 관리 (`docker-compose.yml`)
- **Port Mapping**: 호스트의 8080 포트와 컨테이너의 80 포트 연결
- **Bind Mount**: 로컬의 `index.html` 파일을 컨테이너와 실시간 동기화
- **GitHub 연동**: Git을 통한 버전 관리 및 원격 저장소 동기화

## 🛠 사용 기술 Stack
<img src="https://img.shields.io/badge/Docker-2496ED?style=for-the-badge&logo=Docker&logoColor=white"> <img src="https://img.shields.io/badge/Nginx-009639?style=for-the-badge&logo=NGINX&logoColor=white"> <img src="https://img.shields.io/badge/GitHub-181717?style=for-the-badge&logo=GitHub&logoColor=white"> <img src="https://img.shields.io/badge/HTML5-E34F26?style=for-the-badge&logo=HTML5&logoColor=white">

## 🚀2.프로젝트 실행 가이드
## 가. 실행 환경 (Environment)

프로젝트가 테스트된 환경 정보입니다.

항목	상세 내용
OS	macOS
Shell/Terminal	Bash/Zsh
Docker Version	24.0.x 이상
Git Version	2.40.x 이상

## 나. 수행 항목 체크리스트 (Checklist)

Terminal/권한: 터미널 접속 및 명령어 실행 권한(sudo 등) 확인 완료
Docker: Docker 엔진 설치 및 정상 구동 확인
Dockerfile: 이미지 빌드를 위한 Dockerfile 작성 및 최적화
Port: 호스트와 컨테이너 간 포트 포워딩 설정 (예: 8080:80)
Volume: 데이터 영속성을 위한 볼륨 마운트 설정
Git/GitHub: .gitignore 설정 및 원격 저장소 푸시 완료

## 다. 검증 방법 (Verification)
어떤 명령어로 무엇을 확인했는지 기록합니다.
이미지 빌드	docker build -t my-app .	빌드 성공 여부	결과 이미지/로그
컨테이너 실행	docker run -d -p 80:80 my-app	컨테이너 ID 출력 확인	결과 이미지/로그
포트 접속	curl -I localhost:80	HTTP 200 OK 응답 확인	결과 이미지/로그
볼륨 동기화	ls /var/lib/docker/volumes/...	파일 저장 유무 확인	결과 이미지/로그
Git 로그	git log --oneline	커밋 히스토리 확인	GitHub Commits

## 라. 문제 해결(Troubleshooting)

### (1) 8080 포트 충돌 에러가 발생하는 경우
만약 `Bind for 0.0.0.0:8080 failed: port is already allocated`와 같은 에러가 발생한다면, 이미 8080 포트를 사용하는 다른 컨테이너나 프로그램이 있는 것입니다.

**해결 방법:**
기존에 실행 중인 컨테이너를 중지하고 다시 실행합니다.

```bash
# 컨테이너 중지 및 삭제
docker-compose down

# 다시 실행
docker-compose up -d
```

### (2) 수정 사항이 웹 페이지에 반영되지 않는 경우
index.html을 수정했는데 브라우저에서 변하지 않는다면, 브라우저 캐시 문제일 수 있습니다.

**해결 방법:**
  브라우저에서 Ctrl + F5 (강제 새로고침)를 누르거나, 컨테이너를 재시작하세요.


## ⚙️ 실행 방법
이 프로젝트를 로컬 환경에서 실행하려면 아래 순서를 따르세요.

1. **저장소 클론**
 GitHub에 올라와 있는 소스 코드를 내 컴퓨터로 통째로 복사해오는 과정입니다. 
   git clone https://github.com/hasla-ai/codyssey.git

2. **프로젝트 폴더로 이동 (CD - Change Directory)**
다음 단계인 docker-compose 명령어를 실행하려면, 설정 파일(docker-compose.yml)이 있는 위치에서 명령어를 내립니다.

   cd codyssey

3. **Docker Compose 실행**
docker-compose.yml 파일에 적힌 대로 NGINX 서버를 만들고 실행합니다.
   docker-compose up -d

4. **결과를 웹 브라우저에서 확인**
내 컴퓨터(localhost)의 8080번 포트로 접속해서 NGINX가 잘 돌아가는지 확인합니다.
   http://localhost:8080

## **3.터미널 조작 로그**
1. 파일 및 디렉터리 권한 설정 (File Permissions)
시스템 메타데이터 보호 및 특정 사용자 isolation을 위한 권한 변경 작업 수행 결과입니다.

```Bash
# 1. 변경 전 권한 확인
$ ls -l test_file.txt
$ ls -ld test_dir

# 2. 파일 및 디렉터리 권한 변경
$ chmod 755 test_file.txt
$ chmod 700 test_dir

# 3. 보안 파일 접근 제한 (Owner Only)
$ chmod 600 app.log

# 4. 변경 후 권한 및 메타데이터 확인
$ ls -l app.log
-rw------- 1 username staff 0 Jul 28 12:48 app.log
```
권한 체계 요약
755 (rwxr-xr-x): 소유자 전체 권한, 그룹/기타 실행 및 읽기 (실행 파일/디렉터리 기본)
644 (rw-r--r--): 소유자 읽기/쓰기, 그룹/기타 읽기 (일반 문서 기본)
600 (rw-------): 소유자 전용 읽기/쓰기 (보안 파일 격리)

## **4. Docker & OrbStack 가상화 Layer 점검**
2-1. 데몬 및 CLI 버전 점검

```Bash
$ docker --version
Docker version 28.0.0, build f21b5a4

$ docker info
Client:
 Context:    default
 Debug Mode: false

Server:
 Containers: 0
  Running: 0
  Paused: 0
  Stopped: 0
 Server Version: 28.0.0
 Operating System: macOS (OrbStack Virtualization)
```
Troubleshooting NOTE: DOCKER_INSECURE_NO_IPTABLES_RAW 관련
원인: 최신 Docker Engine(v28+)은 네트워크 포트 매핑 시 iptables의 raw 테이블 모듈을 요구하나, 호스트의 커널 환경에 해당 모듈(CONFIG_IP_NF_RAW)이 미포함되어 있을 때 워닝 발생.
조치 및 영향: DOCKER_INSECURE_NO_IPTABLES_RAW=1 환경 변수를 통해 워크어라운드 적용. 컨테이너 간 네트워크 통신은 정상 작동하며 일반적인 개발 환경 실습에는 영향 없음.

**4-2. 컨테이너 대화형(Interactive) 실습 & Exec vs Attach**
```Bash
# Hello-World 테스트 실행
$ docker run hello-world

# Interactive Ubuntu 컨테이너 실행
$ docker run -it --name my-ubuntu ubuntu bash
root@a1b2c3d4e5f6:/# cat /etc/os-release
root@a1b2c3d4e5f6:/# ps aux
root@a1b2c3d4e5f6:/# exit

# 실행 및 종료된 컨테이너 목록 확인
$ docker ps -a
```
## **5.Dockerfile 기반 웹 서버 컨테이너버 빌드 및 포트 매핑 (Custom Dockerfile)
5-1. 프로젝트 구조 및 소스코드

```Plaintext
my-nginx-server/
├── index.html
├── Dockerfile
└── docker-compose.yml
```

index.html

```HTML
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>My Custom Web Server</title>
</head>
<body>
    <h1>안녕하세요! Docker로 만든 NGINX 서버입니다.</h1>
    <p>성공적으로 포트 매핑이 완료되었습니다!</p>
</body>
</html>
```

Dockerfile

```Dockerfile
# 1. 베이스 이미지 설정
FROM nginx:latest

# 2. 커스텀 웹 페이지 복사 (한글 UTF-8 인코딩 포함)
COPY index.html /usr/share/nginx/html/index.html

# 3. 메타데이터 포트 노출
EXPOSE 80
```

## **6. 이미지를 빌드하고 실행하는 과정(Build & Run)**
가. 이미지를 생성한다(docker build): Dockerfile과 소스코드를 묶어 Immutable(불변) 상태의 이미지를 구워냅니다.

```Bash
# 8080 포트 연결
$ docker run -d -p 8080:80 --name web-8080 my-web-server

# 8081 포트 2회차 검증 연결
$ docker run -d -p 8081:80 --name web-8081 my-web-server

```

나. 포트를 연결하고 컨테이너를 실행한다: 호스트 포트와 컨테이너 내부의 80번 포트를 서로 잇는 통로를 열어 백그라운드로 실행합니다.

```


```

다. 접속을 테스트한다:로컬 엔드포인트에 요철을 보내 응답 HTML 데이터를 검증합니다.

```Bash
$ curl http://localhost:8080
$ curl http://localhost:8081

```
## **7. 바인드 마운트 (Bind Mount) & 볼륨 (Volume) 데이터 영속성 검증**

(1) 바인드 마운트: 실행 명령 + 호스트 변경 전/후 비교

```Bash
# 호스트의 현재 작업 디렉터리($(pwd))를 컨테이너 웹 경로에 라이브 마운트
$ docker run -d \
  -p 8082:80 \
  --name nginx-bind \
  -v $(pwd):/usr/share/nginx/html \
  nginx:latest

# 호스트에서 index.html 파일 수정 후 즉시 반영 확인 (재빌드 과정 없음)
$ curl http://localhost:8082
# 결과: "<p>성공적으로 포트 매핑이 완료되었습니다! 실시간으로 변합니다</p>" 포함 출력 확인

```

(2) Docker 볼륨: 생성/연결/검증 명령 + 컨테이너 삭제 전/후 비교

```Bash
# 1. 볼륨 생성 및 생성된 볼륨 기반 컨테이너 실행
$ docker volume create my-data-vol

$ docker run -d \
  -p 8083:80 \
  --name nginx-vol \
  -v my-data-vol:/usr/share/nginx/html \
  nginx:latest

# 2. 볼륨 내부 데이터 작성
$ docker exec nginx-vol sh -c "echo 'Volume Test Success' > /usr/share/nginx/html/test.txt"

# 3. 데이터 저장 유무 확인 후 컨테이너 강제 삭제
$ docker rm -f nginx-vol

# 4. 동일한 볼륨을 새 컨테이너(nginx-vol-new)에 재연결하여 데이터 복원 유무 검증
$ docker run -d \
  -p 8083:80 \
  --name nginx-vol-new \
  -v my-data-vol:/usr/share/nginx/html \
  nginx:latest

$ curl http://localhost:8083/test.txt
Volume Test Success # ➔ 컨테이너 삭제 후에도 데이터가 보존됨을 성공적으로 확인!
```

## **8.Git 설정 및 저장소 버전 관리 (Git & VSCode)**

```Bash
# Git 환경 설정
$ git config --global user.name "Your Name"
$ git config --global user.email "your.email@example.com"
$ git config --global init.defaultBranch main

# 설정 결과 검증
$ git config --list

# 저장소 초기화 및 커밋 로그

$ cd ~/my-nginx-server
$ git init
$ git add .
$ git commit -m "Docker NGINX 커스텀 서버 및 Compose 구축 완료"

# Commit Log 확인
$ git log --oneline
a1b2c3d (HEAD -> main) Docker Compose 설정 파일 추가
f4e5d6c Docker NGINX 커스텀 서버 구축 완료

```

보안 및 민감정보 관리 안내
 .gitignore 파일을 활용하여 환경변수(*.env), 비밀키 및 인증 토큰 파일이 외부 GitHub 저장소에 노출되지 않도록 처리하였습니다.

## 보너스 과제: Docker Compose 및 Docker Compose
긴 CLI 옵션 입력 과정을 자동화하고 일관된 컨테이너 실행 환경을 보증하기 위해 docker-compose.yml을 작성하였습니다.

```YAML
# docker-compose.yml
services:
  my-web-server:
    build: .
    container_name: nginx-compose
    ports:
      - "8085:80"
    volumes:
      - .:/usr/share/nginx/html
    restart: always
```

```Bash
# Compose 단일 명령으로 이미지 빌드 및 백그라운드 실행
$ docker-compose up -d

# 접속 검증
$ curl http://localhost:8085
```



