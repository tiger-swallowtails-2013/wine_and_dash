$LOAD_PATH.unshift(File.expand_path('.'))

require 'app/app'
require 'capybara/rspec'
Capybara.app = Sinatra::Application

describe "guest logs in with twitter", :type => :feature do
		it "redirects them to the home page" do
		visit '/'
		click_on 'Login with Twitter!'
		expect(current_url).to eq "http://www.example.com/"
		it "displays a welcome! message"
	end

	context "when they have not logged in before" do
		it "creates a new user"
	end
	context "when they have logged in before" do
		it "does not create a new user"
	end
end
