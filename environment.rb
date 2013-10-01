configure :production, :development do 
	db = URI.parse(ENV['DATABASE_URL'] || 'postgres:///mydb')

	ActiveRecord::Base.establish_connection(
		:adapter => db.scheme == 'postgres' ? 'postgresql' : db.scheme,
		:host => db.host,
		:usernmae => db.user,
		:password => db.password,
		:database => db.path[1..-1],
		:encoding => 'utf8'
	)
end

require 'app/models/winery'
require 'app/models/user'
