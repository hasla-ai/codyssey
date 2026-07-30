# 내 컴퓨터에 개발자용 '작업실' 꾸미기

# 프로젝트 개요:
  다음 조건을 만족하는 개발 워크스테이션 구축 결과물입니다.

 1) 제출 저장소(GitHub Repository): 공개된 저장소 링크만으로 아래 산출물 전부를 확인해야 함 등
 2) 기술 문서(README.md등): 기술 문서만 읽어도 전체 수행 내용을 파악할 수 있어야 함(별도 세부설명).
 3) 터미널 조작 로그: 터미널에서 수행한 핵심 명령과 출력 결과를 기술 문서에 기록해야 함.
 4) Docker 운영/검증 로그: 설치·점검 결과 및 운영 명령 실행 흔적이 있어야 함.
 5) Dockerfile 기반 웹 서버 컨테이너: 빌드/실행 명령 및 포트 매핑 접속 성공 내역이 있어야 함.
 6) 포트 매핑 접속 증거: 브라우저 접속 화면(주소창 포함)을 기술 문서에 첨부해야 함.
 7) 바인드 마운트 및 볼륨: 실행 명령이 있고, 호스트 변경 전/후 및 컨테이너 삭제 전/후를 비교해야 함.
 8) Git 설정 등: 연동 증거 등이 있고, 민감한 개인 정보(ID/PW, 토큰 등)가 포함되지 않아야 함.

 # 미션 목표 요약:
 이 과제를 마친 후, 학습자는 이를 스스로 설명할 수 있어야 함: 절대 경로와 상대 경로의 차이, 파일 권한의 의미와 그 표기의 해석 규칙, Dockerfile 기반 커스텀 이미지 제작, 포트 매핑이 필요한 이유,Docker 볼륨(영속 데이터), Git과 GitHub의 역할 차이.

# 실행 환경

항목	상세 내용
OS	macOS
Shell/Terminal	Bash/Zsh
Docker Version	24.0.x 이상
Git Version	2.40.x 이상

# 수행 항목 체크리스트
 - [ ]제출 저장소 및 기술문서 -GitHub Repository 링크, 기술문서에 수행 로그 증거 있어야.
 - [ ]터미널 조작 로그 기록 - 모든 작업은 터미널(CLI) 기반으로 수행한다.
 - [ ]권한 실습 및 증거 기록
 - [ ]Docker 설치 및 기본 점검 - Dockerfile은 직접 작성해야 한다.
 - [ ]Docker 기본 운영 명령 수행 - 브라우저 접속 증거는 주소창(포트 포함)과 응답 화면 함께.
 - [ ]컨테이너 실행 실습
 - [ ]기존 Dockerfile 기반 커스텀 이미지 제작
 - [ ]포트 매핑 및 접속 증거 - 포트 매핑과 마운트/볼륨은 직접 설정하고 동작을 검증해야
 - [ ]Docker 볼륨 영속성 검증
 - [ ]Git 설정 및 GitHub 연동
 - [ ]보안 및 개인정보 보호 - 민감정보는 로그/이미지에 남기지 않는다(마스킹 필수).

 - [ ]보너스과제1. Docker Compose 기초
 - [ ]보너스과제2. Docker Compose 멀티 컨테이너
 - [ ]보너스과제3.Compose 운영 명령어 습득
 - [ ]보너스과제4.환경 변수 활용
 - [ ]보너스과제5.GitHub SSH 키 설정

# 결과 및 검증 방법
 
첫째, 최종 결과물의 조건, 기능 요구 사항, 제약 사항을 종합적으로 정리한 목록에 기반하여 새로이 실행 결과 및 검증 내역을 정리하였다.

둘째, 먼저, 제약 사항 중 공통적으로 해당하는 제약 사항은 아래와 같다.

-[x] 모든 작업은 터미널(CLI) 기반으로 수행한다.
-[x] 캡처/로그에는 “명령어 입력”과 “출력 결과”가 함께 포함되어야 한다.
-[x] 민감정보는 로그/이미지에 남기지 않는다(마스킹 필수).
-[x] 특정 개인 PC에 종속된 경로/설정이 있다면, 대체 방법 또는 주의사항을 함께 기록한다.

셋째, 기능 요구 사항의 순서에 따라 결과 및 검증 방법을 제시하면:

1) 제출 저장소 및 기술문서
-[x] 제출은 GitHub Repository 링크로 진행한다.
  공개(또는 과제 제출 규칙에 맞는 권한)로 생성한다.
  저장소 링크만으로 아래 산출물 전부를 확인할 수 있어야 한다.
  GitHub Repository 링크로 제출한다.

  -- 트러블슈팅(문제 → 원인 가설 → 확인 → 해결/대안)


2) 기술 문서

-[x]기술 문서(README.md 등)에 수행 로그와 증거가 모두 포함되어야 한다.(별도 파일로 분리하는 것은 가능하나, README에서 링크로 접근이 가능해야 한다.)
-[x]README만 보고도 평가자가 동일 절차를 따라 결과물을 확인할 수 있어야 한다.

기술 문서(README.md 등)는 아래 내용을 반드시 포함한다.
모든 수행 결과는 “기술 문서(README.md 등)”에서 확인 가능해야 한다.
  프로젝트 개요(미션 목표 요약)
  실행 환경(OS/쉘/터미널, Docker 버전, Git 버전)
  수행 항목 체크리스트(터미널/권한/Docker/Dockerfile/포트/볼륨/Git/GitHub)
  검증 방법(어떤 명령으로 무엇을 확인했는지) + 결과 위치 링크
  트러블슈팅 2건 이상(문제 → 원인 가설 → 확인 → 해결/대안)
  기술 문서만 읽어도 전체 수행 내용을 파악할 수 있어야 한다.
  기술 문서 내 명령/출력은 코드블록으로 정리한다.

3) 터미널 조작 로그 기록

(i)  터미널에서 수행한 핵심 명령과 출력 결과를 기술 문서에 기록한다.

(ii) 다음 작업을 터미널로 수행하고, 명령어 + 출력 결과를 기술 문서에 기록한다.: 현재 위치 확인, 목록 확인(숨김 파일 포함), 이동, 생성, 복사, 이동/이름변경, 삭제, 파일 내용 확인, 빈 파일 생성.

(iii) 터미널 조작 로그 (Terminal Operation Log) 명령어 및 결과

```bash
$ pwd #현재 위치 확인
/home/user/project
$ ls -al # 목록 확인, # 숨김 파일 포함(-a)

$ mkdir workspace # 폴더 생성
$ cd workspace # 이동

$ touch empty.txt # 빈 파일 생성
$ echo 'Hello, Docker and Git!' > memo.txt

$ cat memo.txt #파일 내용 확인
Hello, Docker and Git!


$ cp memo.txt memo_backup.txt # 파일 복사 후 확인
$ ls
empty.txt  memo.txt  memo_backup.txt

$ mv memo_backup.txt renamed_memo.txt # 이름 변경 (이동)
$ ls
empty.txt  memo.txt  renamed_memo.txt

$ rm empty.txt # 파일 삭제
$ ls
memo.txt  renamed_memo.txt

$ cd .. # 폴더 삭제 (상위 폴더로 이동 후 삭제)
$ rm -rf workspace/
$ ls  # workspace 폴더가 삭제됨
```
-- 트러블슈팅1: mv 명령어의 실행
문제:
 mv: rename renamed_memo.txt to backup/renamed_memo.txt: No such file or directory
원인 가설: 그때의 내 폴더는 나의 현재위치(pwd)에 소속한 폴더여야 한다.
확인: mv 명령어는 "이미 존재하는 목적지"로 옮기거나, 아니면 "새로운 이름"으로 바꾸는 역할을 한다.
해결/대안: 목적지가 폴더일 때, 그 폴더가 미리 만들어져 있어야 파일이 그 안으로 들어간다. 목적지가 폴더가 아닐 때 터미널은 그냥 파일 이름을 바꾼다. 이에 따라 나의 위치에 폴더를 만들고 수행하여 해결했다.

결과는 아래와 같다.
<스크린샷>
![terminal_operation_log](./images/terminal_operation_log.png) 

(v) 권한을 확인/변경하는 명령을 수행하고, 변경 전/후 비교를 기술 문서에 남긴다.
최소 요구: 파일 1개, 디렉토리 1개에 대해 권한 변경 실험을 수행한다.

```bash
ls -l memo.txt  # 파일 권한 변경 전 확인: r (Read), w (Write), x (Execute)
chmod 400 memo.txt #  권한 변경; Read-only 설정
ls -l memo.txt  # 변경 후 확인 결과: 맨 아래 'permission denied: memo.txt'

ls -ld backup    #. 디렉토리 권한 변경 전 확인(폴더 자체를 볼 때는 -d 옵션 필요)
chmod 777 backup   # 권한 변경; Full Access 설정
ls -ld backup     # 변경 후 확인 (모든 권한 개방 확인) 권한의 원리(숫자 4, 2, 1의 합).
```

결과는 아래와 같다.
<스크린샷>
![permision_setting_log](./images/permision_setting_log.png) 

4) Docker 운영/검증 로그

-[x]Dockerfile은 직접 작성해야 한다.



(1) Docker 설치 및 기본 점검

  docker --version, docker info 등 설치·점검 결과
  Docker 버전 확인 결과를 기록한다. (docker --version)
Docker 데몬 동작 여부 확인 결과를 기록한다. (docker info 또는 동등 점검)



결과는 아래와 같다.
<스크린샷>
![permision_setting_log](./images/permision_setting_log.png) 

-- 트러블슈팅2:
문제:
 
원인 가설:
확인:
해결/대안:



(2) Docker 기본 운영 명령 수행

  docker images, docker ps -a, docker logs, docker stats 등 운영 명령 실행 흔적
이미지: 다운로드/목록 확인 (예: docker images)
컨테이너: 실행/중지/목록 확인 (예: docker ps, docker ps -a)
운영: 로그 확인 (예: docker logs), 리소스 확인 (예: docker stats)
수행 명령과 출력 결과를 기술 문서에 남긴다.

결과는 아래와 같다.
<스크린샷>
![permision_setting_log](./images/permision_setting_log.png) 

-- 트러블슈팅2:
문제:
 
원인 가설:
확인:
해결/대안:


(3) 컨테이너 실행 실습

hello-world 실행 성공을 기록한다.
ubuntu 컨테이너를 실행하고 내부 진입 후 간단 명령(예: ls, echo) 수행 결과를 기록한다.
컨테이너 종료/유지(attach/exec 등)의 차이를 스스로 관찰하고 간단히 정리한다.

결과는 아래와 같다.
<스크린샷>
![permision_setting_log](./images/permision_setting_log.png) 

-- 트러블슈팅2:
문제:
 
원인 가설:
확인:
해결/대안:


5) Dockerfile 기반 웹 서버 컨테이너

아래 방식 중 하나를 선택하여 기존 Dockerfile/이미지 기반의 커스텀 이미지를 만든다.
(A) 웹 서버 베이스 이미지 활용(예: NGINX/Apache 등) + 정적 콘텐츠/설정만 교체
(B) Linux 베이스 이미지(예: ubuntu/alpine 등) + 기본 기능(패키지/사용자/환경변수/헬스체크 등) 추가

제작 결과는 아래 조건을 만족해야 한다.
커스텀 이미지 빌드 성공 및 컨테이너 실행 성공
기술 문서에 다음을 포함한다.
어떤 “기존 베이스(이미지/예시 Dockerfile)”를 선택했는지
내가 적용한 커스텀 포인트 각각의 목적(간단 요약)
빌드/실행 명령 + 핵심 결과(출력/스크린샷)

  웹 서버 소스코드(예: app/ 또는 src/)
  Dockerfile
  빌드/실행 명령 및 결과 로그(터미널 스크린샷 가능)
  포트 매핑 접속 성공 증거(스크린샷 또는 로그)

결과는 아래와 같다.
<스크린샷>
![permision_setting_log](./images/permision_setting_log.png) 

-- 트러블슈팅2:
문제:
 
원인 가설:
확인:
해결/대안:


6) 포트 매핑 접속 증거
-[x]포트 매핑과 마운트/볼륨은 직접 설정하고 동작을 검증해야 한다.
-[x]브라우저 접속 증거는 주소창(포트 포함)과 응답 화면이 함께 보이도록 한다.

브라우저 접속 화면(또는 curl 응답)을 기술 문서에 첨부한다.

  p <host_port>:<container_port>로 실행 후, 브라우저 접속 화면(주소창 포함)을 기술 문서에 첨부한다.

결과는 아래와 같다.
<스크린샷>
![permision_setting_log](./images/permision_setting_log.png) 

-- 트러블슈팅2:
문제:
 
원인 가설:
확인:
해결/대안:


7) 바인드 마운트 반영 + 볼륨 영속성 증거
  바인드 마운트: 실행 명령 + 호스트 변경 전/후 비교
  Docker 볼륨: 생성/연결/검증 명령 + 컨테이너 삭제 전/후 비교

Docker 볼륨을 생성하고 컨테이너에 연결한다.
컨테이너 삭제 전/후로 데이터를 확인하여 데이터가 유지됨을 증명한다.
기술 문서에 생성/연결/검증 절차(명령+출력)를 포함한다

결과는 아래와 같다.
<스크린샷>
![permision_setting_log](./images/permision_setting_log.png) 

-- 트러블슈팅2:
문제:
 
원인 가설:
확인:
해결/대안:


 보너스과제(1) Docker Compose 기초
  docker-compose.yml의 기본 구조를 학습하고, 단일 서비스를 Compose로 실행한다.
배움 포인트: 컨테이너 실행 명령이 “문서화된 실행 설정”으로 바뀌는 이유

결과는 아래와 같다.
<스크린샷>
![permision_setting_log](./images/permision_setting_log.png) 

-- 트러블슈팅2:
문제:
 
원인 가설:
확인:
해결/대안:


 보너스과제(2) Docker Compose 멀티 컨테이너
  웹 서버 + (임의의 보조 서비스) 2개 이상을 Compose로 함께 실행한다.
  컨테이너 간 네트워크 통신이 가능한지 확인한다.
  배움 포인트: 네트워크/서비스 디스커버리 개념 맛보기

결과는 아래와 같다.
<스크린샷>
![permision_setting_log](./images/permision_setting_log.png) 

-- 트러블슈팅2:
문제:
 
원인 가설:
확인:
해결/대안:


 보너스과제(3) Compose 운영 명령어 습득
  up, down, ps, logs를 사용해 실행/종료/상태/로그를 관리한다.
배움 포인트: 운영 관점의 “상태 확인 루틴” 만들기

결과는 아래와 같다.
<스크린샷>
![permision_setting_log](./images/permision_setting_log.png) 

-- 트러블슈팅2:
문제:
 
원인 가설:
확인:
해결/대안:


 보너스과제(4) 환경 변수 활용
  Dockerfile 또는 Compose에서 환경 변수를 주입해 서버 포트/모드를 바꿔본다.
배움 포인트: 설정과 코드의 분리

결과는 아래와 같다.
<스크린샷>
![permision_setting_log](./images/permision_setting_log.png) 

-- 트러블슈팅2:
문제:
 
원인 가설:
확인:
해결/대안:


8) Git 설정 및 GitHub/VSCode 연동 증거
  Git 사용자 정보·기본 브랜치 설정 후, VSCode에서 GitHub 로그인 및 저장소 연동 완료
  민감한 개인 정보(ID/PW, 토큰 등)가 포함되지 않도록 주의한다.

* Git 사용자 정보/기본 브랜치 설정을 완료하고 git config --list 결과를 기록한다.
* GitHub 로그인 및 저장소 연동을 완료하고, 연동 증거(스크린샷 등)를 기술 문서에 첨부한다.

결과는 아래와 같다.
<스크린샷>
![permision_setting_log](./images/permision_setting_log.png) 

-- 트러블슈팅2:
문제:
 
원인 가설:
확인:
해결/대안:


9) 보안 및 개인정보 보호
* 기술 문서/로그/스크린샷에 토큰, 비밀번호, 개인키, 인증 코드 등이 포함되지 않도록 마스킹한다.
* 의심되는 민감정보가 노출된 경우, 즉시 히스토리/문서에서 제거하고 재발급 절차를 수행한다 (가능한 범위에서).

 보너스과제(5) GitHub SSH 키 설정
HTTPS 대신 SSH로 푸시가 가능하도록 키를 등록하고 동작을 확인한다.
배움 포인트: 인증 방식 차이와 보안 습관

결과는 아래와 같다.
<스크린샷>
![permision_setting_log](./images/permision_setting_log.png) 

-- 트러블슈팅2:
문제:
 
원인 가설:
확인:
해결/대안:





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



