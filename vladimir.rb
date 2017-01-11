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

class Vladimir < Sinatra::Base
  get "/" do
  end
end
