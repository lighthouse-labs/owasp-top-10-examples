require 'active_support/all'
require 'sinatra'
require 'sinatra/activerecord'
require 'sinatra/contrib/all'

APP_ROOT = Pathname.new(File.expand_path('../../', __FILE__))

configure do
  set :root, APP_ROOT.to_path
  set :server, :puma
  enable :sessions
  set :session_secret, ENV['SESSION_KEY'] || 'secret'
  set :views, File.join(Sinatra::Application.root, 'app', 'views')
end

require_relative '../config/database'
require_relative '../app/actions'
