require 'test/unit'
require File.dirname(__FILE__) + '/methods'
require File.dirname(__FILE__) + '/common'

Test::Unit::TestCase.send(:include, Sinatra::Test::Methods)
