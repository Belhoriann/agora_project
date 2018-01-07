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
    
    def category_icon(category)
        case category
        when "Physics" then "fab fa-react"
        when "Chemistry" then "fas fa-flask"
        when "Biology" then "fab fa-pagelines"
        when "Cosmology" then "fab fa-superpowers"
        when "Computer Science" then "fas fa-microchip"
        when "Technology" then "fas fa-code-branch"
        when "Mathematics" then "fas fa-chart-area"
        when "Aerospace" then "fas fa-rocket"
        when "Health" then "fas fa-medkit"
        when "Archeology" then "fas fa-university"
        when "Environment" then "fas fa-globe"
        when "Neuroscience" then "fas fa-user-circle"
        when "Nanotechnology" then "far fa-dot-circle"
        end
    end
    
    def category_icon_color(category)
        case category
        when "Physics" then "RoyalBlue"
        when "Chemistry" then "PaleVioletRed"
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
        end
    end
end
