## 5. 在 Gemfile 中添加外部包

这里引入 bootstrap, https://getbootstrap.com/docs/5.3/getting-started/download/#rubygems



1. 编辑 `Gemfile`, 添加内容， 并保存

```ruby
# 自定义 外部包

# gem 'bootstrap', '~> 5.3.2'
gem 'bootstrap', '~> 5.3.1'
```

注意： 虽然官网上显示最新是 5.3.2。 但是 https://rubygems.org 上最新的却是 5.3.1。 所以回退一个版本。

**然而**， 视频课程中是使用的 sass 管理， 所以换成与视频相同的依赖管理方式。

```ruby
# Gemfile

gem 'sass-rails', '~> 5.0.5'
gem 'bootstrap-sass', '~> 3.3.5.1'
```

2. 执行 bundle 更新依赖

```bash
$ bundle install
```

安装之后， 你会发现 Gemfile 和 Gemfile.lock 都变化了。


3. 在 `app/stylesheets/application.css` 中添加管理

```css
@import "bootstrap-sprockets";
@import "bootstrap";
```


4. 应用 bootstrap

在 `app/views/users/new.html.erb` 页面中使用 bootstrap 类， 参考 [**bootstrap v3**](https://v3.bootcss.com/components/) 语法


```html

<h1>Users Signup</h1>

<div class="alert alert-success">
Success
</div>


<button type="button" class="btn btn-default btn-lg">
  <span class="glyphicon glyphicon-star" aria-hidden="true"></span> Star
</button>

```

实际效果没生效, 待确定原因。



