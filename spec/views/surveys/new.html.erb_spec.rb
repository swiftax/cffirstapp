require 'rails_helper'

RSpec.describe "surveys/new", type: :view do
  before(:each) do
    assign(:survey, Survey.new(
      :name => "MyString",
      :comments => "MyString",
      :rating => "MyString"
    ))
  end

  it "renders new survey form" do
    render

    assert_select "form[action=?][method=?]", surveys_path, "post" do

      assert_select "input#survey_name[name=?]", "survey[name]"

      assert_select "input#survey_comments[name=?]", "survey[comments]"

      assert_select "input#survey_rating[name=?]", "survey[rating]"
    end
  end
end
