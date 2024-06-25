docker-compose up --build -d

docker run --rm -v $(pwd):/app composer install

cp setupLaravel.sh ./source

docker run --rm -v $(pwd):/app chmod 755 setupLaravel.sh

docker run --rm -v $(pwd):/app sh setupLaravel.sh
