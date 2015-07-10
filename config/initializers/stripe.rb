if Rails.env.production?
	Rails.configuration.stripe = {
		:publishable_key => ENV['pk_test_86KxngbQBcenOqeRYMUDpIQW'],
		:secret_key => ENV['sk_test_O9yuIPpnZnG1sKamPiC97FUT']
	}
else
	Rails.configuration.stripe = {
		:publishable_key => 'pk_test_86KxngbQBcenOqeRYMUDpIQW',
		:secret_key => 'sk_test_O9yuIPpnZnG1sKamPiC97FUT'
	}
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]

