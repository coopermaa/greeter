# greeter.rb
require 'erb'

class Greeter
  def call(env)
    Rack::Response.new render("index.erb")
  end
  
  def render(template)
    path = File.expand_path("../views/#{template}", __FILE__)
    ERB.new(File.read(path)).result
  end  
end