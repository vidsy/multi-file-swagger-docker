BRANCH = "master"
REPONAME = "multi-file-swagger-docker"
VERSION = $(shell cat ./VERSION)

build:
	docker build -t ${REPONAME}:${VERSION} .

check-version:
	@echo "=> Checking if VERSION exists as Git tag..."
	(! git rev-list ${VERSION})

push-tag:
	@echo "=> New tag version: ${VERSION}"
	git checkout ${BRANCH}
	git pull origin ${BRANCH}
	git tag ${VERSION}
	git push origin ${BRANCH} --tags
