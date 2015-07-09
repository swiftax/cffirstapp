require 'rails_helper'

RSpec.describe "surveys/index", type: :view do
  before(:each) do
    assign(:surveys, [
      Survey.create!(
        :name => "Name",
        :comments => "Comments",
        :rating => "Rating"
      ),
      Survey.create!(
        :name => "Name",
        :comments => "Comments",
        :rating => "Rating"
      )
    ])
  end

  it "renders a list of surveys" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Comments".to_s, :count => 2
    assert_select "tr>td", :text => "Rating".to_s, :count => 2
  end
end
