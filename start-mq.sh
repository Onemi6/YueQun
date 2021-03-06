#!/usr/bin/env bash

sudo docker run -d --restart always --hostname yqbot-rabbit --name yqbot-rabbit -p 5672:5672 -p 8080:15672 -e RABBITMQ_DEFAULT_USER=user -e RABBITMQ_DEFAULT_PASS=pass rabbitmq:3-management
