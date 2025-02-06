# 초기 작업

- 도커 설치
  apt-get install -y docker.io
- 도커 컴포즈 설치
  apt-get update -y
  apt-get upgrade -y
  curl -L "https://github.com/docker/compose/releases/download/v2.29.3/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
  chmod +x /usr/local/bin/docker-compose

passwd root : 패스워드 초기화 1234

- SSH Root 접속 허용 설정 (/etc/ssh/sshd_config)
  PermitRootLogin yes
  service ssh restart

  > docker-compose --file docker-compose-dalcom.yml --env-file=docker-base-mac.cfg up
