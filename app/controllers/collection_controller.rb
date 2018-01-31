class CollectionController < ApplicationController
  def collection
    @articles = Article.all
    @categories = Category.all
    @users = User.all
  end
end
