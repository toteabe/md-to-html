#!/bin/bash

wget https://github.com/jgm/pandoc/releases/download/3.7.0.2/pandoc-3.7.0.2-linux-amd64.tar.gz
tar -xvzf pandoc-3.7.0.2-linux-amd64.tar.gz pandoc-3.7.0.2
mv -v pandoc-3.7.0.2/bin/pandoc ./
