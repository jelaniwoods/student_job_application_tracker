require 'rails_helper'

RSpec.describe "interviews/show", type: :view do
  before(:each) do
    @interview = assign(:interview, Interview.create!(
      application_id: 2,
      round: 3,
      completed: false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/false/)
  end
end
