
# 맥 도커 설치 
> mkdir -p /Users/dalcomuser/docker ( docker-base-mac.cfg 맥 자신 사용자로 수정)

- myspringapp jar 프로그램을 위해
> /Users/dalcomuser/docker  디렉토리에 myspringapp 만들고 jar, start.sh 복사

> danyoh@MacBookPro FIRST-DO % docker-compose --file docker-compose-dalcom.yml --env-file=docker-base-mac.cfg up

