# This file is used by Rack-based servers to start the application.

ENV['GEM_HOME'] = '/home/looneydoodle/.rvm/gems/ruby-1.9.3-p194/gems'
require 'rubygems'
Gem.clear_paths
require ::File.expand_path('../config/environment',  __FILE__)
run Billnemo::Application