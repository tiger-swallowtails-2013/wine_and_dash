$LOAD_PATH.unshift(File.expand_path('.'))
require 'sinatra/activerecord/rake'
require 'app/app'
require 'csv'



namespace :data do
  desc "Load all the datays"
  task :import do
    csv = CSV.new(File.open(File.expand_path('db/data/wineries.csv')), :headers => true)
    csv.each do |row|
      winery = Winery.create(name: row[0], url: row[1], address: row[2])
    end
  end
end
