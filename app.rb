require 'roda'
require 'tilt'


class App < Roda
  plugin :render, escape: true
  plugin :hash_routes
  plugin :controller

  Unreloader.require('routes') {}

  route do |r|
    r.hash_routes('')
  end
end
