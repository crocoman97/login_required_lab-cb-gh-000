class SessionsController < ApplicationController

  def new
  end

  def create
    if params[:name] == nil || params[:name].strip == ""
      redirect_to login_path
    else
      session[:name] = params[:name]
      redirect_to 'secrets/show', alert: "You have logged in succefuly"
    end
  end

  def destroy
    session.delete :name unless session[:name].nil?
    redirect_to '/', alert: "You have logged out succefully"
  end

end
