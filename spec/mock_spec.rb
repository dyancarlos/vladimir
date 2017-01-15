require "./spec_helper"

class MockSpec < Test::Unit::TestCase
  include Rack::Test::Methods

  def app
    MockController.new
  end

  # should not be empty
  def test_valid_mock
    get '/mock/example'
    assert last_response.ok?
    response = JSON.parse(last_response.body)
    assert_equal response.empty?, false
  end

  # should redirect
  def test_invalid_mock
    get '/mock/invalid_endpoint'
    assert_equal last_response.status, 302
  end

  # should be an application/json
  def test_should_be_json_response
    get '/mock/example'
    assert_equal last_response.content_type, "application/json"
  end

  # should redirect to "/"
  def test_mock_without_param
    get "/mock"
    assert_equal last_response.status, 302
  end
end
