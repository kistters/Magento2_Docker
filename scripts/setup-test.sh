#!/bin/sh

docker-compose -f docker-compose.yml \
      run phpfpm /bin/sh -c "chmod u+x /src/setup-mage.sh && /src/setup-mage.sh" | tee SetupTest

if grep -q "fail" SetupTest
then
  echo "Setup Test Failed:"
  cat ./SetupTest | grep fail | awk '{print $2, $3}'
exit 1

else
  echo "Setup Test passed"
  exit 0 
fi   