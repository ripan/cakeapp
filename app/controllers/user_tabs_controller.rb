class UserTabsController < ApplicationController
  before_action :set_user_tab, only: [:show, :edit, :update, :destroy]

  # GET /user_tabs
  # GET /user_tabs.json
  def index
    @user_tabs = UserTab.all
  end

  # GET /user_tabs/1
  # GET /user_tabs/1.json
  def show
  end

  # GET /user_tabs/new
  def new
    @user_tab = UserTab.new
  end

  # GET /user_tabs/1/edit
  def edit
  end

  # POST /user_tabs
  # POST /user_tabs.json
  def create
    @user_tab = UserTab.new(user_tab_params)

    respond_to do |format|
      if @user_tab.save
        format.html { redirect_to @user_tab, notice: 'User tab was successfully created.' }
        format.json { render :show, status: :created, location: @user_tab }
      else
        format.html { render :new }
        format.json { render json: @user_tab.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_tabs/1
  # PATCH/PUT /user_tabs/1.json
  def update
    respond_to do |format|
      if @user_tab.update(user_tab_params)
        format.html { redirect_to @user_tab, notice: 'User tab was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_tab }
      else
        format.html { render :edit }
        format.json { render json: @user_tab.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_tabs/1
  # DELETE /user_tabs/1.json
  def destroy
    @user_tab.destroy
    respond_to do |format|
      format.html { redirect_to user_tabs_url, notice: 'User tab was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_tab
      @user_tab = UserTab.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_tab_params
      params.require(:user_tab).permit(:tab_id, :user_id)
    end
end
