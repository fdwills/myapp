class ResourcesController < ApplicationController

  def index
    @resources = Resource.released.recent.page(params[:page]).per(10)
  end

  def top
    render :layout => 'top'
  end
end
