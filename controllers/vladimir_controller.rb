class VladimirController < ApplicationController

  get "/" do
    begin
      @endpoints = YAML.load_file("#{path_to_file}/config/endpoints.yml")
      erb :index
    rescue
      redirect "/error"
    end
  end

end
