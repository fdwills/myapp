class VisitorsController < ApplicationController

  def index
    @resources = Resource.recent.page(params[:page]).per(10)
  end

  def top
    render :layout => 'top'
  end


end
