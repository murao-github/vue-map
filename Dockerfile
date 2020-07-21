# baseimage is node.js 12.18.2
FROM node:12.18.2

# アプリケーションディレクトリを作成する
WORKDIR /usr/src/app

# package.json と package-lock.json をコピー
COPY package*.json ./

# 本番用にコードを作成している場合
# RUN npm install --only=production
RUN npm install