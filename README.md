
# 홈브루 설치 : docker desktop, docker compose


# 설치 
docker-compose.yml

# 볼륨설정 확인
docker volume ls
docker volume inspect mac-dev-docker_my-volume

# 네트워크 이름 확인
docker network ls

# #####################################
# 설치 확인 
# #####################################
 - nginx-proxy-manager
  : http://localhost:81/login  초기비번 : admin@example.com changeme
    비번 변경 : 12345678

 - portainer-ce
  : http://localhost:9000/  초기 : admin admin1234567

 - postgresql
  : 디비 접속 postgres postgres123

- elasticsearch : ??? 이건 어떻게 확인하지 ㅎㅎㅎ
 : http://localhost:9200/

- kibana : ??? 페이지는 잘 떠는데 사용법을 모름 
 : http://localhost:5601
 

 


 - mariadb
  : 디비 접속 root maria123

  ##################################################################
  # 추가 사항 
  ##################################################################
  - nextjs 도커 배포
  - 스프링부트 프로그램 배포
1. 엘라스틱서치
2.  Kibana
3. Posgresql
4. Potainer

??? docker-base.cfg 사용 
??? 프로그램 설치 볼륨 잡기
??? 환경변수 


# 포트 변경 시
- run 명령은 도커 생성 하고 재실행 ( docker up 이 나을지 ㅎㅎㅎ) 
docker run -p 8080:8080 -d spring-01-0.0.1.jar --platform linux/amd64

  ##################################################################
  # 확인 사항 
  ##################################################################
  - nginx-proxy-manager 사용중 ... nginx 에는 되는 기능이 안된다고 하는데 ???

  - postgresql volums 생성 : 다른 볼륨의 데이터 중복으로 생기는것 같음 
     /var/lib/docker/volumes/mac-dev-docker_my-volume/_data/postgres:/var/lib/postgresql/data