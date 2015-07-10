require 'rails_helper'

RSpec.describe "products/index", type: :view do
  before(:each) do
    assign(:products, [
      Product.create!(
        :name => "Name",
        :description => "Description",
        :image_url => "Image Url",
        :color => "Color",
        :price => "Price"
      ),
      Product.create!(
        :name => "Name",
        :description => "Description",
        :image_url => "Image Url",
        :color => "Color",
        :price => "Price"
      )
    ])
  end

  it "renders a list of products" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "Image Url".to_s, :count => 2
    assert_select "tr>td", :text => "Color".to_s, :count => 2
    assert_select "tr>td", :text => "Price".to_s, :count => 2
  end
end
