class VladimirController < ApplicationController

  get "/" do
    begin
      @endpoints = YAML.load_file("config/endpoints.yml")
      erb :index
    rescue
      redirect "/error"
    end
  end

end
