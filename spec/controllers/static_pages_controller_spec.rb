require 'rails_helper'

RSpec.describe StaticPagesController, type: :controller do
	
	describe "Get #landing_page" do 

		it "renders the landing page template" do 
			get :landing_page
			expect(response).to render_template("landing_page")
			end
		end

end
