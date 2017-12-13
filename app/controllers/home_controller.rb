class HomeController < ApplicationController
  def index
    @articles = Article.all
    @bookmarks = Bookmark.all
  end
end
