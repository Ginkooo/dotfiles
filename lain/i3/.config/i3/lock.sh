#!/bin/bash

B='#00000000'  # blank
C='#ffffff22'  # clear ish
D='#5299d9ff'  # default
T='#5299d9ff'  # text
W='#ff0000ff'  # wrong
V='#5299d9ff'  # verifying

i3lock                              \
    -c 000000                       \
    -f                              \
    -u                              \
    --insidevercolor=#00000000      \
    --ringvercolor=#00000000        \
    \
    --insidewrongcolor=#00000000    \
    --ringwrongcolor=#00000000      \
    \
    --insidecolor=#00000000         \
    --ringcolor=#00000000           \
    --linecolor=#00000000           \
    --separatorcolor=#5299d9ff      \
    \
    --verifcolor=#5299d9ff          \
    --wrongcolor=#ff0000ff          \
    --timecolor=#5299d9ff           \
    --datecolor=#5299d9ff           \
    --keyhlcolor=#5299d9ff          \
    --bshlcolor=#5299d9ff           \
    \
    --screen 0                      \
    --clock                         \
    --timesize=50                   \
    --verifsize=50                  \
    --wrongsize=50                  \
    --layoutsize=50                 \
    --timestr="%H:%M:%S"            \
    --datestr=""                    \
    --veriftext="checking..."       \
    --wrongtext="access denied"     \
