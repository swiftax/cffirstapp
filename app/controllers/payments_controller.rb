class PaymentsController < ApplicationController
	def create
		token = params[:stripeToken]
		product = Product.find(params[:product_id])
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
	redirect_to product_path(products)
end
