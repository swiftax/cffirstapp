class Product < ActiveRecord::Base
	has_many :orders
	has_many :comments
	belongs_to :user
	validates :name, presence:true 

	validates :price, :numericality => { :greater_than => 0 }

	def average_rating
		comments.average(:rating).to_f
	end 

end
