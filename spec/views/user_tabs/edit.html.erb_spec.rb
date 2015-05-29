require 'rails_helper'

RSpec.describe "user_tabs/edit", :type => :view do
  before(:each) do
    @user_tab = assign(:user_tab, UserTab.create!(
      :tab => nil,
      :user => nil
    ))
  end

  it "renders the edit user_tab form" do
    render

    assert_select "form[action=?][method=?]", user_tab_path(@user_tab), "post" do

      assert_select "input#user_tab_tab_id[name=?]", "user_tab[tab_id]"

      assert_select "input#user_tab_user_id[name=?]", "user_tab[user_id]"
    end
  end
end
