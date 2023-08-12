#!/usr/bin/env bash

[[ $(git config --get remote.origin.url) == *"git@github.com"* ]] && \
    SSH_REPO=true && \
    PROJECT_USERNAME=$(git config --get remote.origin.url | sed 's/git\@github\.com\:\|\.git\|https\:\/\/github\.com\///g' | awk -F\/ '{printf $1}') && \
    PROJECT_REPONAME=$(git config --get remote.origin.url | sed 's/git\@github\.com\:\|\.git\|https\:\/\/github\.com\///g' | awk -F\/ '{printf $2}')

    [[ ${SSH_REPO} == *"true"* ]] && \
      git remote set-url origin https://github.com/${PROJECT_USERNAME}/${PROJECT_REPONAME}
    cr index -o $GITHUB_USERNAME -r $CHART_NAME -t $GITHUB_TOKEN -i . --push
    [[ ${SSH_REPO} == *"true"* ]] && \
      git remote set-url origin git@github.com:${PROJECT_USERNAME}/${PROJECT_REPONAME}.git
