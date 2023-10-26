Rails.application.routes.draw do
#   get 'welcome/home'  # 自动生成路由， 删除
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # 根路由
  # 执行 welcome controller 的 home 方法
  root "welcome#home"


end
