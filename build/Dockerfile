FROM node:16.5 as vue-build

WORKDIR /app
COPY . ./
RUN yarn install --frozen-lockfile \
  && yarn build

FROM nginx:1.21.1
ARG NGINX_CONF
ARG NGINX_PORT

COPY ${NGINX_CONF} /etc/nginx/templates/default.conf.template
COPY --from=vue-build /app/dist /usr/share/nginx/html

ENV NGINX_PORT ${NGINX_PORT}
EXPOSE ${NGINX_PORT}