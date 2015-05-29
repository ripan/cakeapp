require 'rails_helper'

RSpec.describe "tabs/show", :type => :view do
  before(:each) do
    @tab = assign(:tab, Tab.create!(
      :name => "Name",
      :venue => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(//)
  end
end
