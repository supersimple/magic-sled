require 'rails_helper'

RSpec.describe "members/new", type: :view do
  before(:each) do
    assign(:member, Member.new(
      :email => "MyString",
      :name => "MyString"
    ))
  end

  it "renders new member form" do
    render

    assert_select "form[action=?][method=?]", members_path, "post" do

      assert_select "input#member_email[name=?]", "member[email]"

      assert_select "input#member_name[name=?]", "member[name]"
    end
  end
end
