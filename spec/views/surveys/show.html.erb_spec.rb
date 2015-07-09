require 'rails_helper'

RSpec.describe "surveys/show", type: :view do
  before(:each) do
    @survey = assign(:survey, Survey.create!(
      :name => "Name",
      :comments => "Comments",
      :rating => "Rating"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Comments/)
    expect(rendered).to match(/Rating/)
  end
end
