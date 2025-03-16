# docker-fly

> A docker image for deploying to [fly.io](https://fly.io).

## Getting Started

### GitLab

Suggested configuration for deploying any new release to `my-cluster-name` cluster.

```yaml
deploy:
  stage: deploy
  only:
    - tags
  image: kikobeats/docker-fly
  variables:
    DOCKER_DRIVER: overlay2
  services:
    - docker:dind
  before_script:
    # initialize `docker`
    - echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
  script:
    - ./bin/publish
    - ./bin/deploy
```

## License

**docker-fly** © [Kiko Beats](https://kikobeats.com), released under the [MIT](https://github.com/Kikobeats/docker-fly/blob/master/LICENSE.md) License.<br>
Authored and maintained by Kiko Beats with help from [contributors](https://github.com/Kikobeats/docker-fly/contributors).

> [kikobeats.com](https://kikobeats.com) · GitHub [@Kiko Beats](https://github.com/Kikobeats) · X [@Kikobeats](https://x.com/Kikobeats)
