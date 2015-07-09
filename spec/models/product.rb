Class Product
def average_rating
		comments.average(:rating) === 5
	end 
end