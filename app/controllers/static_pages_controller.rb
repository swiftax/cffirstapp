class StaticPagesController < ApplicationController
  def landing_page
  	@featured_product = Product.first
  	@products = Product.limit(1000)
  end
  def thank_you
    @name = params[:name]
    @email = params[:email]
    @message = params[:message]
    UserMailer.contact_form(@email, @name, @message).deliver
  end
end
