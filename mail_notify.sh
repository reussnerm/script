#!/bin/bash

echo "naughty.notify({ text = \"new email $(cat -)\" })" | ~/.bin/dbus_wrapper_no_x.sh
