.PHONY: serve

serve:
	@hugo server --noHTTPCache --disableFastRender

docker-build: 
	@docker build -t page .

docker-run: 
	docker run -p 8888:80 -d page 
