#!/usr/bin/env bash
export SSH_AUTH_SOCK=/run/user/1000/keyring/ssh
git add .
git commit -m "post updates"
git push origin main
