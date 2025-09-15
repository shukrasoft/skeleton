require 'sinatra'

require_relative './models/environment'

APP_ROOT = File.expand_path(__dir__)

configure do
    set :bind, '0.0.0.0'
    set :port, $env.port
    set :public_folder, File.expand_path('public', __dir__)
    set :environment, :production
    disable :protection
end

require_relative './routes/session'
require_relative './routes/index'