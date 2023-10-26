## 1. Install


## 1.1. Install Ruby

Install [`rbenv`](https://github.com/rbenv/rbenv) first, then use it to manage ruby version in exact project.

```bash
$ brew install rbenv ruby-build
```

Install different versions of ruby via `rbenv`

```bash
## version 3.1.2
$ rbenv install 3.1.2

## version 3.2.0
$ rbenv install 3.2.0
```

## 1.2. Set specify version for project

Enabled for a specify project

```bash
$ cd your_project
$ rbenv local 3.2.0
```

Enabled for global environment

```bash
$ rbenv global 3.1.2
```



## 1.3. Install Rails

Install Rails framework

```bash
$ gem sources -r https://rubygems.org/ -a https://gems.ruby-china.com/  \
    && bundle config mirror.https://rubygems.org https://gems.ruby-china.com

# 安装最新版
# $ gem install rails

# 指定版本
$ gem install rails -v 7.0.4

# ruby --version
# ruby 3.1.3p185 (2022-11-24 revision 1a6b16756e) [aarch64-linux]

# rails --version
# Rails 7.1.1
```

