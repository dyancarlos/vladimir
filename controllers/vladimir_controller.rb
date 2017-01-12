# EXAMPLE 1
#
# get "/first" do
# content_type :json
# File.read("endpoints_files/products.json")
# end

# EXAMPLE 2
#
# get "/first" do
# configs = YAML.load_file("config/endpoints.yml")
# configs.inspect
# end

class VladimirController < ApplicationController

  before do
    @endpoints = YAML.load_file("config/endpoints.yml")
  end

  get "/" do
    @endpoints = @endpoints
    erb :index
  end

end
