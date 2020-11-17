# README

This README documents the steps necessary to get the
application up and running.

* Ruby version: 2.6.6, Rails 6.0.3 (I use [rbenv](https://github.com/rbenv/rbenv))

* System dependencies: PostgreSQL

* Configuration: bundle install && yarn install

* Database creation: entabeni_demo with user and password added to development environment using Rails 6 [custom credentials](https://github.com/rails/rails/pull/33521).
Edited with `rails credentials:edit --environment development`
```
postgres:
  user: yourname
  password: supersecret
```

* Database initialization:
```
rails db:create db:migrate db:seed
```

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
