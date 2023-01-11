build: ## Build or generate website
	hugo

clean: ## Clean up the content in dist
	rm -rf dist/*

post:  ## Post content
	hugo new posts/$(POST_NAME).md
	sed -i '2s/title: .*/title: "$(POST_TITLE)"/' content/posts/$(POST_NAME).md >/dev/null 2>&1

.SILENT
help: ## Displays helpful info when called
	cat Makefile | grep '##' | tr -d '##'
