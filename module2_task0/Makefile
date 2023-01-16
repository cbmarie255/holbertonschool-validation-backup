##.SILENT:
help: ## Must be implemented and print a list of all the goals with a sentence.
	sed -n '2p;5p;11p;14p;17p;21p' Makefile | grep "##" | tr -d "##"

build: ## Compiles the source code of the application to a binary named awesome-api.
	mkdir awesome-api
	cd awesome-api
	go mod init github.com/cbmarie255/awesome-api
	go build -o awesome-api main.go

run: ## Runs the application in background by executing the binary awesome-api, and write logs into a file named awesome.log.
	chmod u+x awesome-api
	touch awesome.log
	chmod u+x awesome.log
	./awesome-api >./awesome.log 2>&1 &
	disown

stop: ## Stops the application.
	kill "$(pgrep awesome-api)"

clean: ## Delete the binary awesome-api and the log file awesome-api.log.
	rm -r awesome-api
	rm awesome-api.log

test: ## Tests application to ensure that it behaves as expected
	curl http://localhost:9999
	curl http://localhost:9999/health
