class SearchController < ApplicationController
    def results
        q = params[:q]
        @articles = Article.search(q).order("created_at DESC")
        @categories = Category.search(q).order("name DESC")
        @users = User.search(q).order("full_name DESC")
        #@total_results = @articles + @categories + @users
    end
end
