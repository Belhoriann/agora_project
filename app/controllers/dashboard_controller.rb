class DashboardController < ApplicationController
    before_action :admin

    def dashboard
        @articles = Article.all
        @categories = Category.all
        @users = User.all
    end
    
    private
    
    def admin
      if user_signed_in?
        unless current_user.admin?
          redirect_to :root, alert: "Only the Administrator can access this area."
        end
      else
          redirect_to :root, alert: "Restricted Area."
      end
    end
end
