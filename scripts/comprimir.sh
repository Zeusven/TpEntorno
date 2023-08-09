#!/bin/bash

mv ../datasets/imagenes ../datasets/para_comprimir/
mv ../datasets/procesado ../datasets/para_comprimir/

tar -zcvf ../datasets/resultado.tar.gz "../datasets/para_comprimir"
