require 'rails_helper'

RSpec.describe "interviews/index", type: :view do
  before(:each) do
    assign(:interviews, [
      Interview.create!(
        application_id: 2,
        round: 3,
        completed: false
      ),
      Interview.create!(
        application_id: 2,
        round: 3,
        completed: false
      )
    ])
  end

  it "renders a list of interviews" do
    render
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
  end
end
