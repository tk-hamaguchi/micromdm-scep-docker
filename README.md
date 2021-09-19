# micromdm-scep-docker
From https://github.com/micromdm/scep


## Build

```
docker build -t micromdm-scep-docker .
```


## Publish

```
echo ${GITHUB_TOKEN} | docker login ghcr.io --username ${GITHUB_USERNAME} --password-stdin
docker tag micromdm-scep-docker ghcr.io/${GITHUB_USERNAME}/micromdm-scep
docker push ghcr.io/${GITHUB_USERNAME}/micromdm-scep
```

see: https://github.com/features/packages
