require 'csv'

class WineriesImporter
  def self.import(filename)
    csv = CSV.new(File.open(filename), :headers => true)
    csv.each do |row|
      winery = Winery.create(name: row[0], url: row[1], address: row[2])
    end
  end
end



WineriesImporter.import(File.expand_path('db/data/wineries.csv'))
