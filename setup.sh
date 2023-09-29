#!/bin/bash

pushd /tmp
wget \
	"https://github.com/sharkdp/fd/releases/download/v8.7.0/fd-v8.7.0-x86_64-unknown-linux-musl.tar.gz" \
	"https://github.com/junegunn/fzf/releases/download/0.42.0/fzf-0.42.0-linux_amd64.tar.gz" \
	"https://github.com/sharkdp/bat/releases/download/v0.23.0/bat-v0.23.0-x86_64-unknown-linux-gnu.tar.gz" \
	"https://github.com/ogham/exa/releases/download/v0.10.1/exa-linux-x86_64-musl-v0.10.1.zip" \
	"https://github.com/dandavison/delta/releases/download/0.16.5/delta-0.16.5-x86_64-unknown-linux-musl.tar.gz" \
	"https://github.com/lsd-rs/lsd/releases/download/v1.0.0/lsd-v1.0.0-x86_64-unknown-linux-musl.tar.gz" \
	"https://github.com/bootandy/dust/releases/download/v0.8.6/dust-v0.8.6-x86_64-unknown-linux-musl.tar.gz" \
	"https://github.com/muesli/duf/releases/download/v0.8.1/duf_0.8.1_linux_x86_64.tar.gz" \
	"https://github.com/cantino/mcfly/releases/download/v0.8.1/mcfly-v0.8.1-x86_64-unknown-linux-musl.tar.gz" \
	"https://github.com/dalance/procs/releases/download/v0.14.0/procs-v0.14.0-x86_64-linux.zip" \
	"https://github.com/antonmedv/fx/releases/download/30.2.0/fx_linux_amd64"
mkdir -p /tmp/bin
pushd /tmp/bin/
tar -xvf /tmp/bat-v0.23.0-x86_64-unknown-linux-gnu.tar.gz
tar -xvf /tmp/delta-0.16.5-x86_64-unknown-linux-musl.tar.gz
tar -xvf /tmp/duf_0.8.1_linux_x86_64.tar.gz
tar -xvf /tmp/dust-v0.8.6-x86_64-unknown-linux-musl.tar.gz
tar -xvf /tmp/fd-v8.7.0-x86_64-unknown-linux-musl.tar.gz
tar -xvf /tmp/fzf-0.42.0-linux_amd64.tar.gz
cp /tmp/fx_linux_amd64 .
tar -xvf /tmp/lsd-v1.0.0-x86_64-unknown-linux-musl.tar.gz
tar -xvf /tmp/mcfly-v0.8.1-x86_64-unknown-linux-musl.tar.gz
unzip /tmp/exa-linux-x86_64-musl-v0.10.1.zip
unzip /tmp/procs-v0.14.0-x86_64-linux.zip
chmod +x fx_linux_amd64
mv fx_linux_amd64 fx
mkdir -p bin
cp fzf bin/
cp fx bin/
cp mcfly bin/
cp procs bin/
cp bat-v0.23.0-x86_64-unknown-linux-gnu/bat bin/
cp delta-0.16.5-x86_64-unknown-linux-musl/delta bin/
cp dust-v0.8.6-x86_64-unknown-linux-musl/dust bin/
cp fd-v8.7.0-x86_64-unknown-linux-musl/fd bin/
cp lsd-v1.0.0-x86_64-unknown-linux-musl/lsd bin/
cp duf bin/
cp -v bin/* ~/bin/
popd
popd

sudo apt-get install silversearcher-ag zoxide python3-glance



