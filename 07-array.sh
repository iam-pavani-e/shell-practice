#!/bin/bash

#array :: we can store multiple values

MOVIES=("court" "Hit3" "tandel" "romancham")
echo "First move: ${MOVIES[0]}"
echo "fourth movies: ${MOVIES[3]}"
echo "All movies: ${MOVIES[@]}"

