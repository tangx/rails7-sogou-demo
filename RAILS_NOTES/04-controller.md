# 4. Create a controller

Create a Controller named `welcome`, and method `home`

## 4.1 使用 rails 命令创建路由

```bash
# $ rails generate controller <控制器名> <方法名>  所有小写

$ rails g controller welcome home
      create  app/controllers/welcome_controller.rb
       route  get 'welcome/home'
      invoke  erb
      create    app/views/welcome
      create    app/views/welcome/home.html.erb
      invoke  test_unit
      create    test/controllers/welcome_controller_test.rb
      invoke  helper
      create    app/helpers/welcome_helper.rb
      invoke    test_unit
```

执行命令后， 可以看到

1. 创建了 controller 控制器: `app/controllers/welcome_controller.rb`
2. 创建了 view 页面: `app/views/welcome/home.html.erb`
3. 创建了 test_unit 测试单元: `test/controllers/welcome_controller_test.rb`

以及操作日志中没有提到的， 

4. 修改了路由文件 `config/routes.rb`， 添加了路由信息。


```ruby
Rails.application.routes.draw do
  get 'welcome/home'
end
```

接下来， 修改 root 路由为 `welcome#home`

在 `config/routes.rb` 中， 将 root 根路由修改为 `welcome` 控制器的 `home` 方法。

```ruby
  # 刚才自动生成的路由， 删除不用。
  # get 'welcome/home'

  # Defines the root path route ("/")
  # root "articles#index"
  # 配置根路由
  # 执行 welcome controller 的 home 方法
  root "welcome#home"
```

接下来修改 view 展示效果

修改文件 `app/views/welcome/home.html.erb`

```html
<h1 style="text-align: center; color: green; margin-top: 20px;">Hello, World</h1>
```




## 4.2. 手工创建路由

1. 创建 `app/controllers/users_controller.rb`, 继承自 ApplicationController 类， 并 **定义** 页面 `new`

```ruby
class UsersController < ApplicationController
    def new
    end
end
```

2. 创建 `app/views/users/new.html.erb`, 注意这里的 `new` 就是上面的 controller 中创建的。 随便写的内容

```html
<h1>Users Signup</h1>
```

3. 在 `app/config/routes.rb` 中添加 `users/new` 页面的相关路由。 这里使用 `resources` 关键字， 而非 root。 

> 为什么我也不知道， 换课程了。 等以后解决吧。

```ruby
  # Defines the root path route ("/")
  root "posts#index"

  ## Resources 是什么路由？
  resources :users
```

目前可以看到， 路由的关键字

1. root : 根路由， 格式为 `welcome#home`
2. get : 自动创建的， 格式为 `welcome/home`
3. resources: 看名字是资源。 格式为 `:users`

