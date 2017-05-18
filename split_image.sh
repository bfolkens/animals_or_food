#!/bin/sh

set -e

IMAGES_PATH=./out

mkdir -p "${IMAGES_PATH}"

convert "examples/Chihuahua-or-Muffin.jpg" -crop 154x155 "${IMAGES_PATH}/tile%03d.jpg"
