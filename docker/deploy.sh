#!/bin/sh

echo "magento"
du -sh ./src
echo "clean ./var ./setup ./dev ./src/pub/static ./src/setup-mage"
sudo rm -rf ./src/var/* ./src/setup/* ./src/dev/* ./src/pub/static/* ./src/setup-mage
du -sh ./src

echo "preparar ZIP \n--------------------------------------------"

sudo zip -rq magento.zip ./src
du -sh ./magento.zip
