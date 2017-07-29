#!/bin/sh

echo "magento"
du -sh ./src

echo "preparar ZIP"
echo "--------------------------------------------"

zip -rq magento.zip ./src
du -sh ./magento.zip
