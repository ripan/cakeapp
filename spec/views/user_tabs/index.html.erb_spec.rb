require 'rails_helper'

RSpec.describe "user_tabs/index", :type => :view do
  before(:each) do
    assign(:user_tabs, [
      UserTab.create!(
        :tab => nil,
        :user => nil
      ),
      UserTab.create!(
        :tab => nil,
        :user => nil
      )
    ])
  end

  it "renders a list of user_tabs" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
