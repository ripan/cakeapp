require 'rails_helper'

RSpec.describe "payments/show", :type => :view do
  before(:each) do
    @payment = assign(:payment, Payment.create!(
      :amount => 1.5,
      :success => false,
      :user_tab => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(//)
  end
end
