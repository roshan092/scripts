#!/bin/bash
echo "Enter the name by which to identify the key"

read NAME

if [ -z "$NAME" ]; then
    ssh-keygen
else
    ssh-keygen -f ~/.ssh/id_rsa.${NAME}
fi

xclip -selection clipboard ~/.ssh/id_rsa.${NAME}.pub
