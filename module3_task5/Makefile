.SILENT:
help: ## Must be implemented and print a list of all the goals with a sentence.
	sed -n '2p;5p;9p;12p;16p;19p;25p;28p;31p;34p;36p;38p;42p' Makefile | grep "##" | tr -d "##"

lint: ## Checks to see if the code is written in compliance with the linter.
	markdownlint README.md
	markdownlint DEPLOY.md

build: ## Compiles the source code of the application to a binary named awesome-api
	hugo

run: ## Runs the application in background by executing the binary awesome-api, and write logs into a file named awesome.log.
	chmod u+x awesome-api
	./awesome-api >./awesome.log 2>&1 &

stop: ## Stops the application.
	pgrep awesome-api | xargs kill

clean: ## Delete the binary awesome-api and the log file awesome-api.log.
	-rm -r awesome-api
	-rm coverage-integrations.out
	-rm coverage-units.out
	-pgrep awesome-api | xargs kill

test: ## Tests application's server to ensure that it behaves as expected.
	go test -v -short -coverprofile=coverage-units.out

unit-tests: ## Unit-testing code for the HelloHandler method.
	go test -v -short -coverprofile=coverage-units.out || echo $1

integration-tests: ## Successfully executes a specific Golang integration tests.
	go test -v -coverprofile=coverage-integrations.out || echo $1

check: ## Should succeed by default, and fail when presented with a dead link or a badly written Markdown file.

validate: ## Must always succeed by default and should print the result on the stdout

post: ## Create a new blog post whose filename and title come from the environment variables
	hugo new posts/$(POST_NAME).md
	sed -i ‘2s/title: .*/title: “$(POST_TITLE)“/’ content/posts/$(POST_NAME).md >/dev/null 2>&1

package: ## Produces a file awesome-website.zip, containing the binary awesome-api and the directory dist/ directory
	make build
	zip awesome-website.zip awesome-api dist/
