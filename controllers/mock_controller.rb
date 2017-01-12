class MockController < ApplicationController

  get "/mock" do
    redirect "/"
  end

  get "/mock/error" do
    content_type :json
    { message: "endpoint not found." }.to_json
  end

  get "/mock/:name" do
    content_type :json

    begin
      endpoints = YAML.load_file("config/endpoints.yml")
      return File.read("endpoints_files/#{endpoints[params["name"]]["file"]}")
    rescue
      redirect "/mock/error"
    end
  end

end
