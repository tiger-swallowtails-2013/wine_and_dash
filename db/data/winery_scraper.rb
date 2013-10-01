require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'csv'


puts "I see you scraping"
doc = Nokogiri::HTML(open('http://www.napavintners.com/wineries/wineries_tastings.asp')) do |config|
  config.strict.nonet
end




winery_data = doc.css('h4')

CSV.open("wineries.csv", "w") do |csv|
  winery_data.each_with_index do |winery,index|
    #NAMES
    p winery_name = winery.children[1].children.text
    #URL
    href = winery.children[1].attributes['href'].text
    p url =  "http://www.napavintners.com" + href
    #ADDRESS
    p address = doc.css('.span8')[index].text.split("\n")[3].strip

    csv << [winery_name, url, address]
    break if winery_name == 'ZD Wines'
  end
end
# p hrefs.inspect


