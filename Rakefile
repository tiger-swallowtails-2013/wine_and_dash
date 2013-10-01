$LOAD_PATH.unshift(File.expand_path('.'))
require 'sinatra/activerecord/rake'
<<<<<<< HEAD
require 'dotenv/tasks'
require_relative './app/controllers/index'

task :mytask => :dotenv do

end
=======
require 'app/controllers/index'
require 'lib/tasks'
require 'csv'

namespace :data do
  task :import => :environment do
    csv = CSV.new(File.open(filename), :headers => true)
    csv.each do |row|
      winery = Winery.create(name: row[0], url: row[1], address: row[2])
    end
  end
end
>>>>>>> 58d0f6aea757fd77628aaadd5dc0cce47d61d23d
