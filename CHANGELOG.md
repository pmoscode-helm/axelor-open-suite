# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](http://keepachangelog.com/en/1.0.0/)
and this project adheres to [Semantic Versioning](http://semver.org/spec/v2.0.0.html).

<!-- insertion marker -->
## Unreleased

<small>[Compare with latest](https://github.com/pmoscode-helm/axelor-open-suite/compare/v7.1.1...HEAD)</small>

### Features

- add new image (based on bitnami/tomcat) with proper config ([9b0b22b](https://github.com/pmoscode-helm/axelor-open-suite/commit/9b0b22bfe6347aff8c67a79f8ed9972efbac5e37) by Peter Motzko).
- bump version to v7.1.2 ([b900628](https://github.com/pmoscode-helm/axelor-open-suite/commit/b9006286e500818545b85319f278d3d800353873) by Peter Motzko).
- add security context ([4dd81ce](https://github.com/pmoscode-helm/axelor-open-suite/commit/4dd81ce82d42ee90c81cc0d315a0dc4a04f4871c) by Peter Motzko).
- set bigger timeout for ingress ([f8b3c9e](https://github.com/pmoscode-helm/axelor-open-suite/commit/f8b3c9e0c8794659b65f2fb919e8958967c6d47d) by Peter Motzko).
- add more setting for liveness, readyness and startup probes ([4603059](https://github.com/pmoscode-helm/axelor-open-suite/commit/460305995c48681c572fb2dfd0229eb83d288d9a) by Peter Motzko).
- add environment values and volumes ([fc7e250](https://github.com/pmoscode-helm/axelor-open-suite/commit/fc7e25008161ffa8b521e4d403d7ec87abfc7837) by Peter Motzko).

### Bug Fixes

- full version prefix ([3a9dc8c](https://github.com/pmoscode-helm/axelor-open-suite/commit/3a9dc8c0c3377c541b8ad7b1e742008ef6b9160f) by Peter Motzko).

### Code Refactoring

- remove autoscaling and imagePullSecret ([984200a](https://github.com/pmoscode-helm/axelor-open-suite/commit/984200a1b012d95155c4da0e871396caaae90f25) by Peter Motzko).
- rename internal chart name ([e4f5c1c](https://github.com/pmoscode-helm/axelor-open-suite/commit/e4f5c1cb64fb4f08f72a8cae7b0a93b547154bc5) by Peter Motzko).
- Move Docker image part to own repo ([da119d7](https://github.com/pmoscode-helm/axelor-open-suite/commit/da119d728498d758f55dac02a3340d6aa9123346) by Peter Motzko).

<!-- insertion marker -->
## [v7.1.1](https://github.com/pmoscode-helm/axelor-open-suite/releases/tag/v7.1.1) - 2023-08-05

<small>[Compare with first commit](https://github.com/pmoscode-helm/axelor-open-suite/compare/7880d29a961afa2c4c4f90b7de1a1b69fee69e67...v7.1.1)</small>

### Features

- refine version pattern ([dc76735](https://github.com/pmoscode-helm/axelor-open-suite/commit/dc767353ec3248396153d30b4ccf33b1b411358f) by Peter Motzko).
- refine triggering events ([691540b](https://github.com/pmoscode-helm/axelor-open-suite/commit/691540b9a1f26c050c640f05708146f05b29bc57) by Peter Motzko).
- add Taskfile action and download latest Axelor release ([aa46a2a](https://github.com/pmoscode-helm/axelor-open-suite/commit/aa46a2aa410b4707ac6a211b8ee12575aa0ff0b5) by Peter Motzko).
- first version of docker build and push to dockerhub ([b3336a1](https://github.com/pmoscode-helm/axelor-open-suite/commit/b3336a107e720dcaa2397d4169f196fd2123dcd8) by Peter Motzko).
- create docker-image.yml GH action ([d3d88fd](https://github.com/pmoscode-helm/axelor-open-suite/commit/d3d88fd11561ec45a2db716bd54bedf85c39e449) by Peter Motzko).
- initial commit ([049311e](https://github.com/pmoscode-helm/axelor-open-suite/commit/049311eb57d42e239dd49a0bbc84298d158e3ba4) by Peter Motzko).

### Bug Fixes

- typo ([5db8fa4](https://github.com/pmoscode-helm/axelor-open-suite/commit/5db8fa4b7db9260b7bab32a26bc29e2e15ae4be6) by Peter Motzko).
- try to remove ci error v3 ([5292e2a](https://github.com/pmoscode-helm/axelor-open-suite/commit/5292e2a1f253a1b1c41daabb1a9e02def64386ef) by Peter Motzko).
- try to remove ci error v2 ([7e1d0f7](https://github.com/pmoscode-helm/axelor-open-suite/commit/7e1d0f7bced29491c476753cd2fc24bcf26de630) by Peter Motzko).
- try to remove ci error ([a983b79](https://github.com/pmoscode-helm/axelor-open-suite/commit/a983b79ab4a4cbcfab8fed5501058b06a5dd610b) by Peter Motzko).

