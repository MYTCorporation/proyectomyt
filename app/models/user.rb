class User < ActiveRecord::Base
	authenticates_with_sorcery!
	#validates :password, length: {minimum: 5}
	#validates :password_confirmation: presence: true
	#validates :password_confirmation, presence: true 
	validates :email, uniqueness: true
end
