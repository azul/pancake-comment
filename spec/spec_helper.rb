require 'spec'
require 'rack/test'
require 'pancake'


$LOAD_PATH.unshift(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
require 'comment'

Spec::Runner.configure do |config|
  config.include(Rack::Test::Methods)
  config.include(Pancake::Test::Matchers)
end
