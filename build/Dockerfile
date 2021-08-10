FROM node:16.5 as builder

WORKDIR /app

COPY package.json yarn.lock ./
RUN yarn install --frozen-lockfile

COPY . .
RUN yarn lint && yarn test && yarn build

FROM nginx:1.21.1 as prod
ARG REVISION_ID
ARG NGINX_CONF
ARG NGINX_PORT
LABEL revision_id=${REVISION_ID}

COPY ${NGINX_CONF} /etc/nginx/templates/default.conf.template
COPY --from=builder /app/dist /usr/share/nginx/html

ENV REVISION_ID=${REVISION_ID}
ENV NGINX_PORT ${NGINX_PORT}
EXPOSE ${NGINX_PORT}