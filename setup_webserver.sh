#!/usr/bin/env bash

if [ ! -f "~/.cloudmonitor/initialized" ]
then
  mkdir ~/traefik-proxy && cd ~/traefik-proxy
  wget https://raw.githubusercontent.com/EmilMoe/traefik-proxy/main/docker-compose.yml
  docker-compose up -d

  echo true > ~/.cloudmonitor/setup_webserver
fi
