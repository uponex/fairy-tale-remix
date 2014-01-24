require 'bundler'
Bundler.setup

$:.unshift File.dirname('.')

require 'app'
run Sinatra::Application