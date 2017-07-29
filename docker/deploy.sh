#!/bin/sh

echo "magento"
du -sh ./src
echo "clean ./var ./setup ./dev ./src/pub/static ./src/setup-mage"
rm -rf ./src/var/* ./src/pub/static/* ./src/setup-mage
du -sh ./src

echo "preparar ZIP"
echo "--------------------------------------------"

zip -rq magento.zip ./src
du -sh ./magento.zip
