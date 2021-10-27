require 'rails_helper'

RSpec.describe "applications/edit", type: :view do
  before(:each) do
    @application = assign(:application, Application.create!(
      submitted: false,
      user_id: 1,
      company_id: 1,
      title: "MyString"
    ))
  end

  it "renders the edit application form" do
    render

    assert_select "form[action=?][method=?]", application_path(@application), "post" do

      assert_select "input[name=?]", "application[submitted]"

      assert_select "input[name=?]", "application[user_id]"

      assert_select "input[name=?]", "application[company_id]"

      assert_select "input[name=?]", "application[title]"
    end
  end
end
