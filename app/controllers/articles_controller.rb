class ArticlesController < ApplicationController

  before_filter :per_load 

  def index
    @articles = Article.order("id desc").page(params[:page]).per(10)
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(params[:article])
    if @article.save
      redirect_to :action =>:index
    else
      render :action => "new"
    end
  end

  def show
  end

  def edit
  end
  def update
    if @article.update_attributes(params[:article])
      redirect_to(@article, :notice => 'Article was successfully updated.')
    else
      render :action => "edit"
    end
  end

  def destroy
    @article.destroy
    redirect_to articles_path
  end

  private                                                                                                                                      
  def per_load
    @article = Article.find_by_id(params[:id]) if params[:id]
  end 

end
