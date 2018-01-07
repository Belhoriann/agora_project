class HomeController < ApplicationController
  def index
    @articles = Article.all
  end
  
  def collection
    @articles = Article.all
    @categories = Category.all
    @users = User.all
  end
end
