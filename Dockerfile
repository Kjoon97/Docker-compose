#node 10버전을 베이스 이미지로 설정.
FROM node:10

#다운 받은 라이브러리들 저장 경로
WORKDIR /usr/src/app

# index.js, package.json파일, 등 로컬 파일들 컨테이너에 복사.
COPY ./ ./

# 필요한 종속성 다운(dependencies에 추가한 express와 redis 다운)
RUN npm install

#컨테이너가 시작될 때 실행될 커맨드 명령어
CMD ["node", "index.js"]