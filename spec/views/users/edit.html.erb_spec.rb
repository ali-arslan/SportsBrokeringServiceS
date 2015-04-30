require 'rails_helper'

RSpec.describe "users/edit", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
      :Name => "MyString",
      :Username => "MyString",
      :Balance => 1,
      :password => "MyString"
    ))
  end

  it "renders the edit user form" do
    render

    assert_select "form[action=?][method=?]", user_path(@user), "post" do

      assert_select "input#user_Name[name=?]", "user[Name]"

      assert_select "input#user_Username[name=?]", "user[Username]"

      assert_select "input#user_Balance[name=?]", "user[Balance]"

      assert_select "input#user_password[name=?]", "user[password]"
    end
  end
end
