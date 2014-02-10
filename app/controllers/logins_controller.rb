class LoginsController < ApplicationController
  def show
      render :new
  end

  def create
    user = User.find_by_name login_params[:name]
    if user && user.authenticate(login_params[:pass])
      session[:user_id] = user.id
      redirect_to root_path
    else
      flash.now.alert = "请再输入一遍"
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    @current_user = nil
    redirect_to login_path
  end

  private

  def login_params
    params.require(:login).permit(:name, :pass)
  end
end
