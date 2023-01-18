.SILENT:
help: ## Must be implemented and print a list of all the goals with a sentence.
	sed -n '2p;5p;8p;17p;21p;24p;28p' Makefile | grep "##" | tr -d "##"

lint: ## Checks to see if the code is written in compliance with the linter.
	golangci-lint run >/dev/null 2>&1 && echo "OK" || echo "ERROR"
	
build: ## Compiles the source code of the application to a binary named awesome-api.
	make lint; \
	if [ $? -eq 0 ]; then \
		go mod init github.com/cbmarie255/awesome-api; \
		go build; \
	else \
		exit 1; \
	fi

run: ## Runs the application in background by executing the binary awesome-api, and write logs into a file named awesome.log.
	chmod u+x awesome-api
	./awesome-api >./awesome.log 2>&1 &

stop: ## Stops the application.
	pgrep awesome-api | xargs kill

clean: ## Delete the binary awesome-api and the log file awesome-api.log.
	rm -r awesome-api
	pgrep awesome-api | xargs kill

test: ## Tests application to ensure that it behaves as expected.
	curl http://localhost:9999
	curl http://localhost:9999/health