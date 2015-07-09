require 'rails_helper'

RSpec.describe "surveys/edit", type: :view do
  before(:each) do
    @survey = assign(:survey, Survey.create!(
      :name => "MyString",
      :comments => "MyString",
      :rating => "MyString"
    ))
  end

  it "renders the edit survey form" do
    render

    assert_select "form[action=?][method=?]", survey_path(@survey), "post" do

      assert_select "input#survey_name[name=?]", "survey[name]"

      assert_select "input#survey_comments[name=?]", "survey[comments]"

      assert_select "input#survey_rating[name=?]", "survey[rating]"
    end
  end
end
