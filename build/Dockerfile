FROM node:16.5 as builder

WORKDIR /app

COPY package.json yarn.lock ./
RUN yarn install --frozen-lockfile

COPY . .
RUN yarn lint && yarn test && yarn build

FROM nginx:1.21.1-alpine as prod
ARG REVISION_ID
LABEL revision_id=${REVISION_ID}

COPY nginx/nginx.conf /etc/nginx/templates/default.conf.template
COPY --from=builder /app/dist /usr/share/nginx/html

ENV REVISION_ID=${REVISION_ID}