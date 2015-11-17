#!/bin/sh
PWD=$(pwd)
APP_PATH=$PWD/ryu/ryu/app
ryu-manager --verbose $APP_PATH/simple_switch_13.py $APP_PATH/ofctl_rest.py $APP_PATH/rest_topology.py
