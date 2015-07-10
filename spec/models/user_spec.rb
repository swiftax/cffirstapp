require 'rails_helper'

RSpec.describe User, type: :model do
    before do 
    	@user = FactoryGirl.create(:user)
    end

    subject { @user }

    it "is invalid without email" do
    		subject.email = nil
    		should_not be_valid
    	end
end