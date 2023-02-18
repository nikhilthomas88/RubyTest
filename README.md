# RubyTest

Ruby Test Project

## Getting Started

* Ruby:-       3.0.0
* Rails:-      7.0.4.2
* Database:-   Postgresql
* Testing:-    Rspec

### Extra Added Gems

* jbuilder
* will_paginate
* rspec-rails
* faker
* rails-pg-extras


### Executing the program

```
rails db:create
rails db:migrate
rails db:seed
rails s
```

### Run Test cases

```
rails db:create RAILS_ENV=test
rails db:migrate RAILS_ENV=test
rails db:seed RAILS_ENV=test
rspec spec/requests/employees_spec.rb
```


### API DOC

#### GET /employees

```
Response

{
  "employees": [
    {
        "fullname": "Wen Wisoky",
        "e_number": 5928523965,
        "created_at": "2023-02-17T17:12:36.631Z"
    },
    {
        "fullname": "Dustin Bins",
        "e_number": 4206313448,
        "created_at": "2023-02-17T17:12:36.630Z"
    },
    {
        "fullname": "Amb. Jordon Rice",
        "e_number": 6304244499,
        "created_at": "2023-02-17T17:12:36.630Z"
    },
  ]
}
```