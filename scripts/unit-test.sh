#!/bin/sh
exit 1

docker-compose -f docker-compose.yml \
        run phpfpm /bin/sh -c "cd /src/www && php ./vendor/phpunit/phpunit/phpunit --configuration ./dev/tests/unit/phpunit.xml.dist ./app/code/Robot/" | tee UnitTest
      
if grep -q "failure" UnitTest
then
  	echo "Setup Test Failed:"
  	cat ./UnitTest | grep fail | awk '{print $2, $3}'
	exit 1

else
  	echo "Setup Test passed"
  	exit 0 
fi
