$:.unshift File.dirname(__FILE__) + "/../lib"
require "sinatra"

require "rubygems"
require "test/spec"
require "mocha"

class Test::Unit::TestCase
  
  def env_for(*args)
    Rack::MockRequest.env_for(*args)
  end
  
end
