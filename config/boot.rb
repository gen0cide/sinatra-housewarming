# ------------------------------------------------------------------------------
require "bundler/setup"
Bundler.require(:default, :console, ENV.fetch("RACK_ENV", :development))
# ------------------------------------------------------------------------------
$APP_ROOT = File.expand_path("../..", __FILE__)
# ------------------------------------------------------------------------------
class Settings < Settingslogic
  source $APP_ROOT + "/config/settings.yml"
end
# ------------------------------------------------------------------------------
Bundler.require(:console)
Wirb.start
Hirb.enable
# ------------------------------------------------------------------------------
if Sinatra::Base.development?
	require "factory_girl"
	require "./spec/factories"
end
# ------------------------------------------------------------------------------
require File.expand_path("../environment", __FILE__)
# ------------------------------------------------------------------------------
Dir[$APP_ROOT + "/models/**/*"            ].each { |file| require file }
Dir[$APP_ROOT + "/helpers/**/*"           ].each { |file| require file }
Dir[$APP_ROOT + "/lib/**/*"               ].each { |file| require file }
Dir[$APP_ROOT + "/config/initializers/*"  ].each { |file| require file }
# ------------------------------------------------------------------------------

