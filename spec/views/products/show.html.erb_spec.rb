require 'rails_helper'

RSpec.describe "products/show", type: :view do
  before(:each) do
    @product = assign(:product, Product.create!(
      :name => "Name",
      :description => "Description",
      :image_url => "Image Url",
      :color => "Color",
      :price => "Price"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/Image Url/)
    expect(rendered).to match(/Color/)
    expect(rendered).to match(/Price/)
  end
end
