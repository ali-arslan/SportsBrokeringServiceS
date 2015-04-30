require 'rails_helper'

RSpec.describe "users/new", type: :view do
  before(:each) do
    assign(:user, User.new(
      :Name => "MyString",
      :Username => "MyString",
      :Balance => 1,
      :password => "MyString"
    ))
  end

  it "renders new user form" do
    render

    assert_select "form[action=?][method=?]", users_path, "post" do

      assert_select "input#user_Name[name=?]", "user[Name]"

      assert_select "input#user_Username[name=?]", "user[Username]"

      assert_select "input#user_Balance[name=?]", "user[Balance]"

      assert_select "input#user_password[name=?]", "user[password]"
    end
  end
end
