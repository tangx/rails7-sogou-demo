
## 3. Run Rails Website

```bash
$ rails s  # port = 3000

$ rails s -p 4001  # port = 4001
```


### 3.1 在容器中启动。

有网络监听地址的问题， 还需要添加 `-b` 参数

```bash
$ rails s -b 0.0.0.0 -p 4001
```


### 3.2 添加 db 支持

打开页面，报错

```
connection to server on socket "/tmp/.s.PGSQL.5432" failed: No such file or directory
```

#### 3.2.1 使用 docker-compose 启动数据库

```yaml
version: "3.8"
services:
  db:
    image: postgres:14
    environment:
      POSTGRES_USER: postgres
      POSTGRES_PASSWORD: Pgsql12345
      POSTGRES_DB: rails7_sogou_demo_development 
      POSTGRES_HOST_AUTH_METHOD: trust
    ports:
      - 5432:5432
    network_mode: default

  redis:
    image: bitnami/redis:latest
    environment:
      REDIS_PASSWORD: Redis12345 
    ports:
      - 6379:6379
    network_mode: default
```

#### 3.2.2 链接远端 PG Server

修改 `config/database.yml`, 找到 development 部分。 

```yaml
development:
  <<: *default
  database: rails7_sogou_demo_development
  username: postgres
  password: Pgsql12345
  host: localhost 
  port: 5432
```

注意， 这里需要注释 `config/database.yml` 中的 test 部分。 否则下一步的时候， 初始化数据库也出实话 test 的数据库

#### 3.3.3 使用 Rails 创建数据库

```bash
$ rails db:create
```

### 4. 打开页面

在数据库初始化成功后， 重新启动服务器， 访问页面 http://127.0.0.1:4001 显示正常。



