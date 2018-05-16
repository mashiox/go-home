#!/usr/bin/env bash

set -e 

APP="$SRC_HOST/$SRC_USER/$SRC_NAME"

go install $APP

