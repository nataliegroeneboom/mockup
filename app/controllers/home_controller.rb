class HomeController < ApplicationController
  def index
    redirect_to posts_path if logged_in?
  end
end
