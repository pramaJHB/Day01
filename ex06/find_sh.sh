#!/bin/sh

find . -type f -regex ".*\.sh" -exec basename {} .sh ';'

