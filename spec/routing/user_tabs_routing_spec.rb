require "rails_helper"

RSpec.describe UserTabsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/user_tabs").to route_to("user_tabs#index")
    end

    it "routes to #new" do
      expect(:get => "/user_tabs/new").to route_to("user_tabs#new")
    end

    it "routes to #show" do
      expect(:get => "/user_tabs/1").to route_to("user_tabs#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/user_tabs/1/edit").to route_to("user_tabs#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/user_tabs").to route_to("user_tabs#create")
    end

    it "routes to #update" do
      expect(:put => "/user_tabs/1").to route_to("user_tabs#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/user_tabs/1").to route_to("user_tabs#destroy", :id => "1")
    end

  end
end
