class HomeController < ApplicationController
  def index
    @articles = Article.all
  end
  
  def collection
    @articles = Article.all
    @users = User.all
  end
end
