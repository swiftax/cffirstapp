require "rails_helper"

RSpec.describe StaticPagesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/static_pages").to route_to("static_pages#landing_page")
    end

  end
end