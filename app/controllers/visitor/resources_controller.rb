class Visitor::ResourcesController < VisitorController

  def index
    @resources = Resource.released.recent.page(params[:page]).per(10)
  end

  def show
    @resource = Resource.released.find(params[:id])
  end

  def top
    render :layout => 'top'
  end
end
