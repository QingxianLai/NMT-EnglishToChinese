#!/bin/bash

for f in $(find . -name '*.xml'); do
    python xml_parser.py ${f}
done
