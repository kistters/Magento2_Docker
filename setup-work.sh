#!/bin/sh
echo "build and up percona"
docker-compose build percona
docker-compose up -d percona

sleep 5

echo "setup magento"

docker-compose -f docker-compose.yml \
 			run --rm phpfpm /bin/sh -c "chmod u+x /src/setup-mage.sh && /src/setup-mage.sh"  | tee SetupTest

    if grep -q "fail" SetupTest
    then
      echo "Setup Test Failed:"
      cat ./SetupTest | grep fail | awk '{print $2, $3}'
    else
      echo "Setup Test passed"
    fi
