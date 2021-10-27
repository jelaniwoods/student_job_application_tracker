# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


rails generate ideas:devise user name
rails g ideas:scaffold company name:string sector:string
rails g ideas:scaffold application submitted:boolean user_id:integer company_id:integer due_on:date title:string
rails g ideas:scaffold interview application_id:integer round:integer starts_at:datetime completed:boolean
