puts "I'm the user model"

class User < ActiveRecord::Base
	validates :first_name, presence: true
	validates :last_name, presence: true
	validates :password, presence: true
	validates :email, presence: true, uniqueness: { case_sensitive: false,
						message: "e-mail has already been used for sign-up: drink another glass!" }
	validates :username, presence: true, uniqueness: { case_sensitive: false,
						message:  "username has already been taken, find another drink!"}
end
