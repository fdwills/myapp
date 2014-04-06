class Visitor::BlogsController < VisitorController

  def index
    @blogs = Blog.released.recent.page(params[:page]).per(10)
  end

  def show
    @blog = Blog.released.find(params[:id])
  end

  def top
    render :layout => 'top'
  end
end
