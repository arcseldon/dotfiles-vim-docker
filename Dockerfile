FROM ubuntu:latest

MAINTAINER arcseldon <arcseldon@gmail.com>

RUN useradd -ms /bin/bash vimuser
RUN apt-get update
RUN apt-get -y install build-essential
RUN apt-get -y install less
RUN apt-get -y install wget
RUN apt-get -y install vim
RUN apt-get -y install git
RUN apt-get -y install nodejs
RUN apt-get -y install npm
RUN apt-get -y install ack-grep
RUN apt-get -y install exuberant-ctags
RUN npm install -g js-beautify
RUN npm install -g eslint
RUN npm install -g standard
RUN npm install -g semistandard

USER vimuser

WORKDIR /home/vimuser

RUN mkdir -p /home/vimuser/bin && \
cd /home/vimuser/bin && wget -q -O - https://github.com/arcseldon/dotfiles-vim/archive/1.0.0.tar.gz |  tar -zx \
&& ln -nfs /home/vimuser/bin/dotfiles-vim-1.0.0/vim/vimrc /home/vimuser/.vimrc \
&& ln -nfs /home/vimuser/bin/dotfiles-vim-1.0.0/vim /home/vimuser/.vim \
&& git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim && vim +PluginInstall +qall!
