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
        when "Physics" then "fab fa-react"
        when "Chemistry" then "fas fa-flask"
        when "Communications" then "fas fa-terminal"
        when "Biology" then "fas fa-leaf"
        when "Cosmology" then "fab fa-superpowers"
        when "Computer Science" then "fas fa-code"
        when "Technology" then "fas fa-code-branch"
        when "Mathematics" then "fas fa-superscript"
        when "Aerospace" then "fas fa-rocket"
        when "Health" then "fas fa-medkit"
        when "Archeology" then "fas fa-university"
        when "Environment" then "fas fa-globe"
        when "Neuroscience" then "fas fa-user-circle"
        when "Nanotechnology" then "far fa-dot-circle"
        when "Energy" then "fas fa-bolt"
        when "Transport" then "fas fa-car"   
        when "Cryptocurrency" then "fab fa-btc"
        when "Artificial Intelligence" then "fas fa-microchip"
        when "Geology" then "fas fa-adjust"
        when "Zoology" then "fas fa-paw"
        when "Robotics" then "fas fa-cog"
        end
    end
    
    def category_icon_color(category)
        case category
        when "Physics" then "RoyalBlue"
        when "Chemistry" then "PaleVioletRed"
        when "Communications" then "Blue"
        when "Biology" then "Lime"
        when "Cosmology" then "Orange"
        when "Computer Science" then "grey"
        when "Technology" then "blue"
        when "Mathematics" then "HotPink"
        when "Aerospace" then "Tomato"
        when "Health" then "Red"
        when "Archeology" then "LightCoral"
        when "Environment" then "DeepSkyBlue"
        when "Neuroscience" then "Coral"
        when "Nanotechnology" then "SlateBlue"
        when "Energy" then "GoldenRod"
        when "Transport" then "lightseagreen"
        when "Cryptocurrency" then "DarkCyan"
        when "Artificial Intelligence" then "DarkTurquoise"
        when "Geology" then "Teal"
        when "Zoology" then "Hotpink"
        when "Robotics" then "brown"
        end
    end
end
