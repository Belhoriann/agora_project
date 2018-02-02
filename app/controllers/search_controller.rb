class SearchController < ApplicationController
    def results
        q = params[:q]
        
        if q != ""
            @articles = Article.search(q).order("created_at DESC")
            @categories = Category.search(q).order("name DESC")
            @users = User.search(q).order("full_name DESC")
            @tags = Tag.search(q).order("name DESC")
        end
        
        if q.blank?
            @articles = nil
            @categories = nil
            @users = nil
            @tags = nil
        end
    end
end
