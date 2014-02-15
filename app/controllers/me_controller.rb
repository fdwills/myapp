class MeController < ApplicationController
  before_action :readable?
  before_action :writable?, only: [:new, :edit, :update, :create, :destroy]

  def readable?
    unless login? && current_user.id == user.id
      render_not_permit
    end
  end

  def writeable?
    unless login? && current_user.id == user.id
      render_not_permit
    end
  end

  def user
    return @user if @user.present?
    @user = Users.find params[:user_id]
  end
end
