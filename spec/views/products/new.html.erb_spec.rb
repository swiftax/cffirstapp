require 'rails_helper'

RSpec.describe "products/new", type: :view do
  before(:each) do
    assign(:product, Product.new(
      :name => "MyString",
      :description => "MyString",
      :image_url => "MyString",
      :color => "MyString",
      :price => "MyString"
    ))
  end

  it "renders new product form" do
    render

    assert_select "form[action=?][method=?]", products_path, "post" do

      assert_select "input#product_name[name=?]", "product[name]"

      assert_select "input#product_description[name=?]", "product[description]"

      assert_select "input#product_image_url[name=?]", "product[image_url]"

      assert_select "input#product_color[name=?]", "product[color]"

      assert_select "input#product_price[name=?]", "product[price]"
    end
  end
end
