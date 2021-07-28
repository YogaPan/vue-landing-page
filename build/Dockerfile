FROM node:16.5

COPY . /usr/src/app
WORKDIR /usr/src/app

RUN yarn install --frozen-lockfile \
  && yarn global add serve \
  && yarn build

EXPOSE 8080
CMD serve -s dist -l 8080