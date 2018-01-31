class BookmarksController < ApplicationController
  def bookmarks
    @articles = Article.all
    @comments = Comment.all
    @categories = Category.all
    @users = User.all
  end
end
