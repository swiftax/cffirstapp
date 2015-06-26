class StaticPagesController < ApplicationController
  def landing_page
  	@featured_product = Product.first
  	@products = Product.limit(3)
  end
  def thank_you
    @name = params[:name]
    @email = params[:email]
    @message = params[:message]
  ActionMailer::Base.mail(:from => @email, 
                          :to => 'tony@swiftax.com', 
                          :subject => "Welcome to My Awesome Site #{@name} ", 
                          :body => @message).deliver
  end
end
