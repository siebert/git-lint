#!/bin/bash
( cat $1; echo "INPUT=$2" ) | doxygen -
