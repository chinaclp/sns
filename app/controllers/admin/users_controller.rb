class Admin::UsersController < ApplicationController
  
  def user_page
    @articles = Article.order('id desc').page(params[:page]).per(5)
  end

  def index
  end

  def new
  end

  def create
  end

  def show
    @user = User.find_by_id(params[:id])
    @articles = Article.where(user_id: params[:id]).page(params[:page]).per(20)
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
