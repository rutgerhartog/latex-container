# latex-container

A drone plugin for LaTeX


### Example with Gitea

```yaml
kind: pipeline
type: docker
name: default

steps:
- name: build
  image: rutgerhartog/latex-container
  settings:
    compiler: pythontex
    filename: main.tex
- name: gitea_release
  image: plugins/gitea-release
  settings:
    api_key: xxxxxxxx
    base_url: https://your.gitea.tld
    files:
      - main.pdf
```
