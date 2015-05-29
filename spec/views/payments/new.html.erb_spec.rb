require 'rails_helper'

RSpec.describe "payments/new", :type => :view do
  before(:each) do
    assign(:payment, Payment.new(
      :amount => 1.5,
      :success => false,
      :user_tab => nil
    ))
  end

  it "renders new payment form" do
    render

    assert_select "form[action=?][method=?]", payments_path, "post" do

      assert_select "input#payment_amount[name=?]", "payment[amount]"

      assert_select "input#payment_success[name=?]", "payment[success]"

      assert_select "input#payment_user_tab_id[name=?]", "payment[user_tab_id]"
    end
  end
end
