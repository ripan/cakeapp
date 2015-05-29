require 'rails_helper'

RSpec.describe "tabs/index", :type => :view do
  before(:each) do
    assign(:tabs, [
      Tab.create!(
        :name => "Name",
        :venue => nil
      ),
      Tab.create!(
        :name => "Name",
        :venue => nil
      )
    ])
  end

  it "renders a list of tabs" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
