class AdminController < ApplicationController
  before_action :readable?
  before_action :writable?, only: [:new, :edit, :update, :create, :destroy]

  def readable?
    unless admin?
      render_not_permit
    end
  end

  def writeable?
    unless admin?
      render_not_permit
    end
  end
end
