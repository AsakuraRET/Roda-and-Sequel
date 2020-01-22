require 'roda'
require 'sequel'
require 'tilt'

database = "app_development"
user     = ENV["asakura"]
password = ENV["Scrum123"]
DB = Sequel.connect(adapter: "postgres", database: database, host: "127.0.0.1", user: user, password: password)

class App < Roda
  plugin :render, escape: true
  plugin :hash_routes
  plugin :controller

  Unreloader.require('routes') {}

  route do |r|
    r.hash_routes('')
  end
end
