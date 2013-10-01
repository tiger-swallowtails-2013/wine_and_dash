require 'sinatra'
require 'dotenv'
require 'omniauth'
require 'omniauth-twitter'
Dotenv.load('.env.development')

$LOAD_PATH.unshift(File.expand_path('.'))

require 'sinatra/activerecord'

set :database, ENV['DATABASE_URL']
require 'app/models/user'
require 'app/models/winery'


enable :sessions

use OmniAuth::Builder do
	provider :twitter, ENV['TWITTER_KEY'], ENV['TWITTER_SECRET']
end

get '/' do
	"<a href='/auth/twitter'>Login with Twitter!</a>"
end

get '/auth/twitter/callback' do
  p env['omniauth.auth']
	redirect '/'
end
