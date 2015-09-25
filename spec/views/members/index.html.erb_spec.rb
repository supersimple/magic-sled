require 'rails_helper'

RSpec.describe "members/index", type: :view do
  before(:each) do
    assign(:members, [
      Member.create!(
        :email => "Email",
        :name => "Name"
      ),
      Member.create!(
        :email => "Email",
        :name => "Name"
      )
    ])
  end

  it "renders a list of members" do
    render
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
