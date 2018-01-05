# mytravis [![Build Status](https://travis-ci.org/MilosSimic/mytravis.svg?branch=master)](https://travis-ci.org/MilosSimic/mytravis)
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

For more commands go to [docs](https://docs.travis-ci.com/user/encryption-keys/)
