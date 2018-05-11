.PHONY: server save build publish

server:
	hugo server

build:
	hugo

save:
	git add .
	git push

publish:
	rm -rf public
	git clone git@github.com:timster/timster.github.io.git public
	hugo
	cd public && git add .
	cd public && git commit -m "$(shell date)"
	cd public && git push
