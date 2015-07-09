require 'rails_helper'

  describe Product do

  context "rating" do

    before { @product = Comments.average(:rating) }

    it "should return first and last"
      expect(Comments.average(:rating)).to eq "5"
    end
  end
end