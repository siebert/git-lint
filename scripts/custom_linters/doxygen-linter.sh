#!/bin/bash

# As we currently don't know how to prevent the "documented symbol `foo' was not declared or defined." warnings, we filter them.
( cat $1; echo "INPUT=$2" ) | doxygen - 2>&1 | grep -v "documented symbol [\`'].*' was not declared or defined."
