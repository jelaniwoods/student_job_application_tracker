require 'rails_helper'

RSpec.describe "applications/new", type: :view do
  before(:each) do
    assign(:application, Application.new(
      submitted: false,
      user_id: 1,
      company_id: 1,
      title: "MyString"
    ))
  end

  it "renders new application form" do
    render

    assert_select "form[action=?][method=?]", applications_path, "post" do

      assert_select "input[name=?]", "application[submitted]"

      assert_select "input[name=?]", "application[user_id]"

      assert_select "input[name=?]", "application[company_id]"

      assert_select "input[name=?]", "application[title]"
    end
  end
end
