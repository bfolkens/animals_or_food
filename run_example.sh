#!/bin/sh

set -e

./split_image.sh
./send_images.rb out/tile*.jpg > out/responses.csv
