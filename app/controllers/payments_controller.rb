class PaymentsController < ApplicationController
	def new		
	end

	def index
	end
	
	def create
		token = params[:stripeToken]
		# Create the charge on Stripe's servers - this will charge teh user's card
		
		begin
			charge = Stripe::Charge.create(
				:amount => 2000,
				:currency => "usd",
				:source => token,
				:description => params[:stripeEmail]
				)
		rescue Stripe::CardError => e
		# Declines the card
		body = e.json_body
		err  = body[:error]
		flash[:error] = "We are so sorry! We couldn't process your payment: #{err[:message]}"
	end
	redirect_to product_path(product)
end
end
