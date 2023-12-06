build:
	docker build -t webserver .
run: build
	docker run --name webserver -d -p 80:80 webserver
clean:
	docker stop webserver
	docker rm webserver
	docker rmi webserver
rerun: clean run
	true