# README

Simple Restful API.

All Rail command must be executed inside de Docker container.

`docker-compose exec web bash`

* Ruby version

* System dependencies

* Configuration

* Database creation

`config/database.yml`

```
    default: &default
    adapter: postgresql
    encoding: unicode
    host: db
    username: postgres
    password:
    pool: 5

    development:
    <<: *default
    database: myapp_development


    test:
    <<: *default
    database: myapp_test
```

* Database initialization

`docker-compose run web rake db:create`

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
