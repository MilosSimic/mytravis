# mytravis [![Build Status](https://travis-ci.org/MilosSimic/mytravis.svg?branch=master)](https://travis-ci.org/MilosSimic/mytravis) [![Built with Spacemacs](https://cdn.rawgit.com/syl20bnr/spacemacs/442d025779da2f62fc86c2082703697714db6514/assets/spacemacs-badge.svg)](http://spacemacs.org)
Docker image for Travis CLI 


## Summary
Docker image for Travis CLI

1) Build your image:
```
docker build -t mytravis .
```

2) Positionate where your ```.travis.yml ``` file is located

Run travis cli commands in this format:
```
docker run --rm -v $PWD:/repo -v ~/.travis:/travis mytravis <command>
```

3) Login to your github repo:
```
docker run --rm -v $PWD:/repo -v ~/.travis:/travis mytravis -github-token <github_access_token>
```

4) Test is your repo connected:
```
docker run --rm -v $PWD:/repo -v ~/.travis:/travis mytravis whoami
```

## Github access token
To get github_access_token go to _your profile > Developer settings > Personal access tokens > Generate new token_

For more commands go to [docs](https://docs.travis-ci.com/user/encryption-keys/)
