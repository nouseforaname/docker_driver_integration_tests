#!/bin/bash

cd `dirname $0`

pkill -f fakedriver

mkdir -p ~/voldriver_plugins
rm ~/voldriver_plugins/fakedriver.*

mkdir -p ../mountdir

driversPath=$HOME/voldriver_plugins
../exec/fakedriver -listenAddr="0.0.0.0:9876" -transport="tcp-json" -mountDir="../mountdir" -driversPath="${driversPath}" &