class ErrorController < Sinatra::Base

  get "/error" do
    content_type :json
    { message: "something is wrong! verify the endpoit or if the file exists." }.to_json
  end

end
