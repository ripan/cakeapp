require 'rails_helper'

RSpec.describe "user_tabs/show", :type => :view do
  before(:each) do
    @user_tab = assign(:user_tab, UserTab.create!(
      :tab => nil,
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
