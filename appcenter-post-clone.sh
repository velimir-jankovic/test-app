#!/usr/bin/env bash
echo $APPCENTER_BRANCH
echo $APPCENTER_BUILD_ID


# git remote set-url origin https://$GIT_USERNAME:$GIT_PWD@github.com/test-org-appcenter/test-repo.git
# git remote set-url origin https://github.com/test-org-appcenter/test-repo.git
# git remote set-url --push origin https://github.com/test-org-appcenter/test-repo.git
TAG="$APPCENTER_BRANCH-$APPCENTER_BUILD_ID"
git tag "$TAG"
git push origin "HEAD:$APPCENTER_BRANCH" --tags
