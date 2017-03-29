#!/usr/bin/env bash
echo "Compiling Lispy"
cc -std=c99 -Wall $PWD/parsing.c $PWD/mpc.c -ledit -lm -o $PWD/parsing
