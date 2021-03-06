require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe UserTabsController, :type => :controller do

  # This should return the minimal set of attributes required to create a valid
  # UserTab. As you add validations to UserTab, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # UserTabsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all user_tabs as @user_tabs" do
      user_tab = UserTab.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:user_tabs)).to eq([user_tab])
    end
  end

  describe "GET show" do
    it "assigns the requested user_tab as @user_tab" do
      user_tab = UserTab.create! valid_attributes
      get :show, {:id => user_tab.to_param}, valid_session
      expect(assigns(:user_tab)).to eq(user_tab)
    end
  end

  describe "GET new" do
    it "assigns a new user_tab as @user_tab" do
      get :new, {}, valid_session
      expect(assigns(:user_tab)).to be_a_new(UserTab)
    end
  end

  describe "GET edit" do
    it "assigns the requested user_tab as @user_tab" do
      user_tab = UserTab.create! valid_attributes
      get :edit, {:id => user_tab.to_param}, valid_session
      expect(assigns(:user_tab)).to eq(user_tab)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new UserTab" do
        expect {
          post :create, {:user_tab => valid_attributes}, valid_session
        }.to change(UserTab, :count).by(1)
      end

      it "assigns a newly created user_tab as @user_tab" do
        post :create, {:user_tab => valid_attributes}, valid_session
        expect(assigns(:user_tab)).to be_a(UserTab)
        expect(assigns(:user_tab)).to be_persisted
      end

      it "redirects to the created user_tab" do
        post :create, {:user_tab => valid_attributes}, valid_session
        expect(response).to redirect_to(UserTab.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved user_tab as @user_tab" do
        post :create, {:user_tab => invalid_attributes}, valid_session
        expect(assigns(:user_tab)).to be_a_new(UserTab)
      end

      it "re-renders the 'new' template" do
        post :create, {:user_tab => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested user_tab" do
        user_tab = UserTab.create! valid_attributes
        put :update, {:id => user_tab.to_param, :user_tab => new_attributes}, valid_session
        user_tab.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested user_tab as @user_tab" do
        user_tab = UserTab.create! valid_attributes
        put :update, {:id => user_tab.to_param, :user_tab => valid_attributes}, valid_session
        expect(assigns(:user_tab)).to eq(user_tab)
      end

      it "redirects to the user_tab" do
        user_tab = UserTab.create! valid_attributes
        put :update, {:id => user_tab.to_param, :user_tab => valid_attributes}, valid_session
        expect(response).to redirect_to(user_tab)
      end
    end

    describe "with invalid params" do
      it "assigns the user_tab as @user_tab" do
        user_tab = UserTab.create! valid_attributes
        put :update, {:id => user_tab.to_param, :user_tab => invalid_attributes}, valid_session
        expect(assigns(:user_tab)).to eq(user_tab)
      end

      it "re-renders the 'edit' template" do
        user_tab = UserTab.create! valid_attributes
        put :update, {:id => user_tab.to_param, :user_tab => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested user_tab" do
      user_tab = UserTab.create! valid_attributes
      expect {
        delete :destroy, {:id => user_tab.to_param}, valid_session
      }.to change(UserTab, :count).by(-1)
    end

    it "redirects to the user_tabs list" do
      user_tab = UserTab.create! valid_attributes
      delete :destroy, {:id => user_tab.to_param}, valid_session
      expect(response).to redirect_to(user_tabs_url)
    end
  end

end
