
## 2. Create Project

Create a new project, specify the extension at the same time.

```bash
$ rails new rails7-sogou-demo --css bootstrap -j esbuild -d postgresql
```

Modify `Gemfile`

```gemfile
# source "https://rubygems.org"
source "https://gems.ruby-china.com"
```

Then, Install modules/package

```bash
$ bundle install
```

## 3. Install libpg in MacOS

"bundle install" throws an error about lacking library `libpg`

```bash
# $ brew install libpg

## https://stackoverflow.com/questions/6040583/cant-find-the-libpq-fe-h-header-when-trying-to-install-pg-gem
## https://stackoverflow.com/a/6040822
$ brew install postgresql
```


