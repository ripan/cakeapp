require 'rails_helper'

RSpec.describe "UserTabs", :type => :request do
  describe "GET /user_tabs" do
    it "works! (now write some real specs)" do
      get user_tabs_path
      expect(response.status).to be(200)
    end
  end
end
