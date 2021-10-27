require 'rails_helper'

RSpec.describe "applications/index", type: :view do
  before(:each) do
    assign(:applications, [
      Application.create!(
        submitted: false,
        user_id: 2,
        company_id: 3,
        title: "Title"
      ),
      Application.create!(
        submitted: false,
        user_id: 2,
        company_id: 3,
        title: "Title"
      )
    ])
  end

  it "renders a list of applications" do
    render
    assert_select "tr>td", text: false.to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
    assert_select "tr>td", text: "Title".to_s, count: 2
  end
end
