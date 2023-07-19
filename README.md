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
# @lskjs/kubectl

Like a dind but with kubectl.

## using from GitLab CI

```yml
deploy:
  stage: deploy
  image: lskjs/kubectl
  script:
    - docker login -u ${DOCKER_REGISTRY_USER} -p ${DOCKER_REGISTRY_PASS} ${DOCKER_REGISTRY}
    - docker build -t ${DOCKER_IMAGE} ${DOCKER_FILE}
    - docker tag ${DOCKER_IMAGE} ${DOCKER_TAG}
    - docker push ${DOCKER_IMAGE}
    - docker push ${DOCKER_TAG}
    - kubectl create secret generic prod-kit --from-file=${prod_env_file} --from-file=${prod_env_js} --save-config --dry-run=client -o yaml | kubectl apply -f -
    - envsubst < deploy/k8s-deploy.yaml > deploy.yaml.${CI_COMMIT_SHORT_SHA}
    - kubectl apply -f ./deploy.yaml.${CI_COMMIT_SHORT_SHA}

```

## using from docker

`docker run -it --rm lskjs/dind bash`


# @lskjs/node

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



# @lskjs/puppeteer-nodejs

Docker image based on `nodejs` with puppeteer deps.

## using from docker

`docker run -it --rm lskjs/puppeteer-nodejs:latest npm start`
`docker run -it --rm lskjs/puppeteer-nodejs:15.8.0 npm start`
`docker run -it --rm lskjs/puppeteer-nodejs:17.4.0 npm start`


# @lskjs/rsync

A little docker image based on alpine with ssh-client and bash

## using from GitLab CI

```yml
deploy_staging:
  stage: deploy
  image: lskjs/rsync
  environment:
    name: staging
    url: https://sample-app.net
  script:
    - mkdir -p ~/.ssh
    - chmod 700 ~/.ssh
    - echo -e "Host *\n\tStrictHostKeyChecking no\n\n" > ~/.ssh/config
    - echo "$SSH_PRIVATE_KEY_STAGING" > ~/.ssh/id_rsa
    - chmod 600 ~/.ssh/id_rsa
    - rsync -avz deploy/app_staging/. $DEPLOY_STAGING_SSH_HOST:~/app
    - rsync -avz src/project/conf/. $DEPLOY_STAGING_SSH_HOST:~/app/conf
    - ssh $DEPLOY_STAGING_SSH_HOST 'chmod 700 ~/app/app.sh'
    - ssh $DEPLOY_STAGING_SSH_HOST 'cd ~/app && ./app.sh --file docker-compose-staging.yml up'
    - ssh $DEPLOY_STAGING_SSH_HOST 'cd ~/app && ./app.sh --file docker-compose-staging.yml update'
  only:
    - dev
```

## using from docker

`docker run -it --rm lskjs/rsync bash`

## supported tags and respective Dockerfile links

- 3.1 [3.1/Dockerfile](https://github.com/lskjs/rsync/blob/master/3.1/Dockerfile)
- 3.6 [3.6/Dockerfile](https://github.com/lskjs/rsync/blob/master/3.6/Dockerfile)
- 3.9 [3.9/Dockerfile](https://github.com/lskjs/rsync/blob/master/3.9/Dockerfile)
- 3.10 [3.10/Dockerfile](https://github.com/lskjs/rsync/blob/master/3.10/Dockerfile)
- 3.11, latest [3.11/Dockerfile](https://github.com/lskjs/rsync/blob/master/3.11/Dockerfile)



------------------

# How to make changes

1. Clone repo
2. `npm install`

## Add new versions 

1. Change `config.js`
2. `npm run build`
3. `npm run release`

## Change Dockerfile new versions 

1. Change `templates/*`
2. `npm run build`
3. `npm run release`


## Add new images

1. Create `templates/*`
2. Change `config.js`
3. `npm run build`
4. `npm run release`
