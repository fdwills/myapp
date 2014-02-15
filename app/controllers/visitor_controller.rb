class VisitorController < ApplicationController
  before_action :writable?, only: [:new, :edit, :update, :create, :destroy]

  def top
    render :layout => 'top'
  end

  def about
    @informations = Inforamtion.recent
    render :layout => 'signin'
  end

  def writable?
    unless login?
      render_not_permit
    end
  end
end
