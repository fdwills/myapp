class VisitorsController < ApplicationController

  def index
    @posts = Post.recent.page(params[:page]).per(10)
  end

  def top
  end


end
