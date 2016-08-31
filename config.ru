# config.ru
require 'greeter'

# Reloader has a 10 seconds cooldown by default
# Change it to 0, so that it picks up the changes immediately
use Rack::Reloader, 0
use Rack::Static,
  :urls => ["/images", "/js", "/css"],
  :root => "public"

run Greeter.new
