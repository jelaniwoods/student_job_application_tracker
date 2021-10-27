require 'rails_helper'

RSpec.describe "interviews/new", type: :view do
  before(:each) do
    assign(:interview, Interview.new(
      application_id: 1,
      round: 1,
      completed: false
    ))
  end

  it "renders new interview form" do
    render

    assert_select "form[action=?][method=?]", interviews_path, "post" do

      assert_select "input[name=?]", "interview[application_id]"

      assert_select "input[name=?]", "interview[round]"

      assert_select "input[name=?]", "interview[completed]"
    end
  end
end
