class VladimirController < ApplicationController

  before do
    @endpoints = YAML.load_file("config/endpoints.yml")
  end

  get "/" do
    @endpoints = @endpoints
    erb :index
  end

end
