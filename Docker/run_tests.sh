#!/bin/env bash

cd /src

echo Build
bash Jenkins/build.sh

echo Test
bash Jenkins/test.sh

echo -30-

