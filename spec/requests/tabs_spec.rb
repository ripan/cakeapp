require 'rails_helper'

RSpec.describe "Tabs", :type => :request do
  describe "GET /tabs" do
    it "works! (now write some real specs)" do
      get tabs_path
      expect(response.status).to be(200)
    end
  end
end
