class TopicsController < ApplicationController

  before_filter :per_load 

  def index
    if params[:content].blank?
      @topics = Topic.order('id desc').page(params[:page]).per(5)
    elsif
      @topics = Topic.where("title like ? or content like ? ", "%#{params[:content]}%", "%#{params[:content]}%")
    end
  end

  def new
    @topic = Topic.new
  end

  def create
    @topic = Topic.new(params[:topic])
    if @topic.save
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
    if @topic.update_attributes(params[:topic])
      redirect_to(@topic, :notice => 'Topic was successfully updated.')
    else
      render :action => "edit"
    end
  end

  def destroy
    @topic.destroy
    redirect_to topics_path
  end

  private                                                                                                                                      
  def per_load
    @topic = Topic.find_by_id(params[:id]) if params[:id]
  end 

end
