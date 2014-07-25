#!/bin/bash

# verify simple connection
ssh $SSH_USER@$SSH_HOST date

# try running something that will send a fair bit of data
ssh -v -v $SSH_USER@$SSH_HOST dd if=/dev/urandom bs=20480 count=1 | hexdump
