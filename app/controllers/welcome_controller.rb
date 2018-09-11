class WelcomeController < ApplicationController
  def index
  end

  def dashboard
    @developer = Developer.find(params[:id])
  end
end
