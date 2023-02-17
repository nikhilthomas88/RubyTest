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
   "previous_page": 29,
   "next_page": 31,
   "employees": [
    {
      "fullname": "Natalya Bosco",
      "e_number": 2670863397,
      "created_at": "2023-02-17T18:44:16.243Z"
     },
     {
      "fullname": "Morgan Stoltenberg",
       "e_number": 5787876901,
       "created_at": "2023-02-17T18:44:16.231Z"
      }
  ]
}
```