# greeter.rb
class Greeter
  def call(env)
    Rack::Response.new "Hello World"
  end
end
