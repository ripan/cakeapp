require 'rails_helper'

RSpec.describe "tabs/edit", :type => :view do
  before(:each) do
    @tab = assign(:tab, Tab.create!(
      :name => "MyString",
      :venue => nil
    ))
  end

  it "renders the edit tab form" do
    render

    assert_select "form[action=?][method=?]", tab_path(@tab), "post" do

      assert_select "input#tab_name[name=?]", "tab[name]"

      assert_select "input#tab_venue_id[name=?]", "tab[venue_id]"
    end
  end
end
