#!/bin/sh
echo "circle"

echo "build images and containers"
docker-compose build percona; sleep 5
docker-compose up -d --build percona

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
