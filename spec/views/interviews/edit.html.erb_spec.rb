require 'rails_helper'

RSpec.describe "interviews/edit", type: :view do
  before(:each) do
    @interview = assign(:interview, Interview.create!(
      application_id: 1,
      round: 1,
      completed: false
    ))
  end

  it "renders the edit interview form" do
    render

    assert_select "form[action=?][method=?]", interview_path(@interview), "post" do

      assert_select "input[name=?]", "interview[application_id]"

      assert_select "input[name=?]", "interview[round]"

      assert_select "input[name=?]", "interview[completed]"
    end
  end
end
