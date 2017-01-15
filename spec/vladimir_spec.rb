require "./spec_helper"

class VladimirSpec < Test::Unit::TestCase
  include Rack::Test::Methods

  def app
    VladimirController.new
  end

  def test_valid_home
    get '/'
    assert last_response.ok?
    assert last_response.body.include?('Overview')
  end

 end
