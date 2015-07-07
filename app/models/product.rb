class Product < ActiveRecord::Base
	has_many :orders
	has_many :comments
	belongs_to :user
	validates :name, presence:true 

	def average_rating
		comments.average(:rating).to_f
	end 

end
