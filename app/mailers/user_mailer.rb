class UserMailer < ApplicationMailer
	default from: "from@example.com"

	def contact_form(email, name, message)
		@message = message
		mail(:from => email,
					:to => "tony@swiftax.com",
					:subject => "You have received a new contact form message from #{name}")
	end

	 def registration(first_name, email)
    	@first_name = first_name
         mail(:from => "tony@swiftax.com",
         			:to => "#{email}")
	end
end
