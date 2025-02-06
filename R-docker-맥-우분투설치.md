# 맥 우분투 설치 후 테스트  
> mkdir -p /Users/danyoh/docker ( docker-base-mac.cfg 바꾸고 수정)
> docker-compose --file docker-compose-ubuntu.yml --env-file=docker-base-mac.cfg up



# ubuntu 설치 후 내부에 도커 설치 (리눅스와 동일)
- 도커 설치 후 
  apt-get install -y docker.io
- 도커 컴포즈 설치
  apt-get update -y
  apt-get upgrade -y
  curl -L "https://github.com/docker/compose/releases/download/v2.29.3/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
  chmod +x /usr/local/bin/docker-compose

# 리눅스 사용자 초기화

- passwd root : 패스워드 초기화 1234

- 사용자 초기화
  useradd dalcomuser
  passwd dalcomuser
  gpasswd -a dalcomuser docker
  ??? tee /etc/sudoers.d/dalcomuser
  mkdir -p /home/dalcomuser/docker
  chown -R dalcomuser.dalcomuser /home/dalcomuser/docker

- FTP : vi /etc/vsftpd.conf 마지막에 추가 pasv_enable=NO
  write_enable=YES
  /etc/ftpusers 수정 # 주석 처리
  service vsftpd restart

- SSH Root 접속 허용 설정 (/etc/ssh/sshd_config)
  PermitRootLogin yes
  service ssh restart

  