## Dotfiles VIM Docker

This contains a docker file that can build an Ubuntu image with the 
necessary vimrc configurations, plugins and third party dependencies installed.

```
docker build -t arcseldon/dotfiles-vim .

docker run -dit arcseldon/dotfiles-vim

docker exec -it <dockerContainerId> bash
```


### Docker Hub - How to install

```
docker pull arcseldon/dotfiles-vim
```

If preferred, [the dotfiles-vim](https://github.com/arcseldon/dotfiles-vim) repo
can be directly cloned, and has instructions for a local installation


### TODO

Sort out the breaking changes porting from MacOS to Ubuntu 16

### Reference - docker commands


- docker pull [ image name ]
- docker run [ image name ]
- docker images
- docker ps
- 
- docker rmi
- docker ps -a
- docker rm


