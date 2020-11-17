# @lskjs/dind

A little docker image based on `docker:dind` with envsubst and bash. Default shell is bash.

## using from GitLab CI

```yml
deploy:
  stage: deploy
  image: lskjs/dind
  script:
    - docker login -u ${DOCKER_REGISTRY_USER} -p ${DOCKER_REGISTRY_PASS} ${DOCKER_REGISTRY}
    - docker build -t ${DOCKER_IMAGE} ${DOCKER_FILE}
    - docker tag ${DOCKER_IMAGE} ${DOCKER_TAG}
    - docker push ${DOCKER_IMAGE}
    - docker push ${DOCKER_TAG}
    - envsubst < docker-stack.yml > docker-stack.yml.${CI_COMMIT_SHORT_SHA}
    - docker stack deploy --with-registry-auth --compose-file=./docker-stack.yml.${CI_COMMIT_SHORT_SHA} ${DOCKER_SERVICE}
```

## if you need docker-compose

```yml
test:
  stage: test
  image: lskjs/dind:compose
  script:
    - docker-compose run test
```

## using from docker

`docker run -it --rm lskjs/dind bash`
