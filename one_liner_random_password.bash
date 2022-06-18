#!/bin/bash
openssl rand -base64 12

openssl rand -hex 12

date|md5sum|head -c 8 # where 8 is length of password 