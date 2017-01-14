require 'rubygems'
require 'yaml'
require 'bundler'

Bundler.require

require_relative 'controllers/application_controller'
require_relative 'controllers/vladimir_controller'
require_relative 'controllers/mock_controller'
require_relative 'controllers/error_controller'

run ApplicationController
use VladimirController
use MockController
use ErrorController
