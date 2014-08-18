#!/bin/sh
nohup /usr/bin/java {{env_vars}} -DIAM_CONFIG=/home/{{username}}/{{service_config}} -jar /home/{{username}}/{{app_name}}.jar