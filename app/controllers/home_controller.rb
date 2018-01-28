class HomeController < ActionController::Base
  def index
    @posts = Blog.all 
    @skills = Skill.all
  end
end
