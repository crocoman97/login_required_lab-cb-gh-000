class SecretsController < ApplicationController
  before_action :log_in

  def show
  end

  private

  def log_in
    redirect_to login_path unless session.include? :name
  end

end
