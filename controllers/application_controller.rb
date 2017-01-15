class ApplicationController < Sinatra::Base
  set :root, File.join(File.dirname(__FILE__), '..')
  set :views, Proc.new { File.join(root, "views") }

  protected
  def path_to_file
    File.dirname(__FILE__).gsub("/controllers", "")
  end
end
