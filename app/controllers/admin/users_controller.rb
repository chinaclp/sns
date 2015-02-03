class Admin::UsersController < ApplicationController
  
  def user_page
    @user = Current_user
  end

  def index
  end

  def new
  end

  def create
  end

  def show
    @user = User.find_by_id(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
