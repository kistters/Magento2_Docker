#!/bin/sh


du -sh ./src

echo "preparar ZIP"
echo "--------------------------------------------"

ls -la .

mv ./src ./magento

zip -rq magento.zip ./magento
du -sh ./magento.zip
du -sh ./magento

ls -la .