# 홈브루 설치 : docker desktop, docker, docker compose

# 도커 명령어들
> docker-compose.yml
> 볼륨설정 확인
docker volume ls
docker volume inspect mac-dev-docker_my-volume

> 네트워크 이름 확인
docker network ls

# 설치 후 확인

- nginx-proxy-manager
  : http://localhost:81/login 초기비번 : admin@example.com changeme
  비번 변경 : 12345678

- portainer-ce
  : http://localhost:9000/ 초기 : admin admin1234567

- postgresql
  : 디비 접속 postgres postgres123 (디비 : postgres)

- elasticsearch : ??? 이건 어떻게 확인하지 ㅎㅎㅎ
  : http://localhost:9200/

- kibana : ??? 페이지는 잘 떠는데 사용법을 모름
  : http://localhost:5601

- mariadb
  : 디비 접속 root maria123

- server-myspring
  : http://localhost:8080, http://localhost:8080/greeting

# 처리사항

- DB 컨테이너 아이피 고정 ( 변경시 다른 서비스에 문제 발생함 )  
  docker inspect postgres ( 아이피 확인 ㅣ 172.18.0.5 고정 )

- 공유 디렉토리  
  shared-data-vol:/shared ( 프로그램 볼륨 확인해보면 /shared 에 존재 )

# 포트 변경 시
1. 메뉴얼로 변경 ㅎㅎㅎ  
run 명령은 도커 생성 하고 재실행 ( docker up 이 나을지 ㅎㅎㅎ)  


- 샘플 
1. mkdir -p ./home/gsall/docker
2. docker-compose --f docker-compose-myprj.yml --env-file=docker-base.cfg
2. docker compose --file docker-compose-myprj.yml --env-file=docker-base.cfg