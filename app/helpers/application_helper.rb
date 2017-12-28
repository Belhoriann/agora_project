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
        end
    end
end
