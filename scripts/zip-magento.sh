#!/bin/sh

echo "magento"
du -sh ./src

echo "preparar ZIP"
echo "--------------------------------------------"

ls -la .

mv ./src ./magento

zip -rq magento.zip ./magento
du -sh ./magento.zip
du -sh ./magento
du -sh ./src