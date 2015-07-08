class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :orders
  has_many :products
  has_many :users

  def to_s
  	first_name
  end



private

  def welcome_email 
    UserMailer.welcome_message(self).deliver
  end

end