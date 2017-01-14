class MockController < ApplicationController

  get "/mock" do
    redirect "/"
  end

  get "/mock/:name" do
    content_type :json

    begin
      endpoints = YAML.load_file("config/endpoints.yml")
      return File.read("endpoints_files/#{endpoints[params["name"]]["file"]}")
    rescue
      redirect "/error"
    end
  end

end
