module ApplicationHelper
    
    # Make the ressource :user available on every page
    def resource_name
    :user
    end
    
    def resource
    @resource ||= User.new
    end
    
    def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
    end
    
    def comment_count(article)
        Comment.where(article_id: article.id).size
    end
    
    def category_icon(category)
        case category
            when "Agricultural Sciences" then "fab fa-pagelines"
            when "Engineering & Technology" then "fas fa-cog"
            when "Humanities" then "fas fa-book"
            when "Medical & Health Sciences" then "fas fa-medkit"
            when "Natural Sciences" then "fab fa-react"
            when "Social Sciences" then "fas fa-user-circle"
        end
    end
    
    def category_icon_color(category)
        case category
            when "Agricultural Sciences" then "ForestGreen "
            when "Engineering & Technology" then "Brown"
            when "Humanities" then "GoldenRod"
            when "Medical & Health Sciences" then "Red"
            when "Natural Sciences" then "lightseagreen"
            when "Social Sciences" then "PaleVioletRed"
        end
    end
end
