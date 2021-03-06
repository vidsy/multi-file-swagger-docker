BRANCH = "master"
REPONAME = "vidsyhq/multi-file-swagger-docker"
VERSION = $(shell cat ./VERSION)

build:
	@docker build -t ${REPONAME} --build-arg VERSION=${VERSION} .

check-version:
	@echo "=> Checking if VERSION exists as Git tag..."
	(! git rev-list ${VERSION})

push-tag:
	@echo "=> New tag version: ${VERSION}"
	git checkout ${BRANCH}
	git pull origin ${BRANCH}
	git tag ${VERSION}
	git push origin ${BRANCH} --tags

push-to-registry:
	@docker login -u ${DOCKER_USER} -p ${DOCKER_PASS}
	@docker tag ${REPONAME}:latest ${REPONAME}:${CIRCLE_TAG}
	@docker push ${REPONAME}:${CIRCLE_TAG}
	@docker push ${REPONAME}
