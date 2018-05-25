class TopicsController < ApplicationController
  layout 'blog'

  def index
    @topics = Topic.all
  end

  def show
    @topic = Topic.find(params[:id])

    if logged_in?(:site_admin)
      @blogs = @topic.blogs.page(params[:page]).per(5).by_newest
    else
      @blogs = @topic.blogs.published.page(params[:page]).per(5).by_newest
    end
  end
end
