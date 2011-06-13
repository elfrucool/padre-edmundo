#!/bin/bash

for i in *.tex; do latex-mk --clean $i; done

rm *.dvi -vf

