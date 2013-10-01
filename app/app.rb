require 'sinatra'
require 'dotenv'
Dotenv.load('.env.development')

require 'omniauth'
require 'omniauth-twitter'

# use Rack::Session::Cookie

enable :sessions

use OmniAuth::Builder do
	provider :twitter, ENV['myWvZNAobyLIjMX8i8hpnA'], ENV['gtVBq56q4FrCF28tRHry8wKedkhswF5RB2wtdmveM']
end

get '/' do
	"<a href='/auth/twitter'>Login with Twitter!</a>"
end

get '/auth/twitter/callback' do
	redirect '/'
end