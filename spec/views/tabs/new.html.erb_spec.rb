require 'rails_helper'

RSpec.describe "tabs/new", :type => :view do
  before(:each) do
    assign(:tab, Tab.new(
      :name => "MyString",
      :venue => nil
    ))
  end

  it "renders new tab form" do
    render

    assert_select "form[action=?][method=?]", tabs_path, "post" do

      assert_select "input#tab_name[name=?]", "tab[name]"

      assert_select "input#tab_venue_id[name=?]", "tab[venue_id]"
    end
  end
end
