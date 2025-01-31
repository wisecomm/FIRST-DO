
# 설치 
docker-compose.yml

# 볼륨설정 확인
docker volume ls
docker volume inspect my-volume

# 네트워크 이름 확인
docker network ls

# 설치 확인 
 - nginx-proxy-manager
  : http://localhost:81/login  초기비번 : admin@example.com changeme
    비번 변경 : 12345678

 - mariadb
  : 디비 접속 root maria123

  ##################################################################
  # 추가 사항 
  ##################################################################
  - nextjs 도커 배포
  - 스프링부트 프로그램 배포


  ##################################################################
  # 확인 사항 
  ##################################################################
  - nginx-proxy-manager 사용중 ... nginx 에는 되는 기능이 안된다고 하는데 ???
