#!/usr/bin/env bash
nohup java -jar -Dspring.profiles.active=local kraydel-oauth-server.jar >server-oauth.out 2>&1&