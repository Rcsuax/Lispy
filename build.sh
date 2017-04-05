#!/usr/bin/env bash
echo "Compiling Lispy"

LIBEDIT=$(dpkg -s libedit-dev | grep Status | awk -F 'install' '{print $2}')

if [ $LIBEDIT != "ok" ]; then
		sudo apt-get install libedit-dev
fi

cc -std=c99 -Wall $PWD/parsing.c $PWD/mpc.c -ledit -lm -o $PWD/parsing
