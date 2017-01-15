require "./spec_helper"

class ErrorSpec < Test::Unit::TestCase
  include Rack::Test::Methods

  def app
    ErrorController.new
  end

  def test_valid_error_message
    get '/error'
    assert last_response.ok?
    response = JSON.parse(last_response.body)
    assert_equal response["message"], "something is wrong! verify the endpoit or if the file exists."
  end

 end
