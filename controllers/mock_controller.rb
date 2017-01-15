class MockController < ApplicationController

  get "/mock" do
    redirect "/"
  end

  get "/mock/:name" do
    content_type :json

    begin
      endpoints = YAML.load_file("#{path_to_file}/config/endpoints.yml")
      send_file "#{path_to_file}/endpoints_files/#{endpoints[params["name"]]["file"]}", status: 200
    rescue
      redirect "/error"
    end
  end

end
