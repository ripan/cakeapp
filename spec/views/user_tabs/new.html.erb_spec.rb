require 'rails_helper'

RSpec.describe "user_tabs/new", :type => :view do
  before(:each) do
    assign(:user_tab, UserTab.new(
      :tab => nil,
      :user => nil
    ))
  end

  it "renders new user_tab form" do
    render

    assert_select "form[action=?][method=?]", user_tabs_path, "post" do

      assert_select "input#user_tab_tab_id[name=?]", "user_tab[tab_id]"

      assert_select "input#user_tab_user_id[name=?]", "user_tab[user_id]"
    end
  end
end
