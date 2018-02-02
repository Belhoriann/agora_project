module ArticlesHelper
    def tag_buttons(tags)
        tags.split(",").map{|tag| link_to tag.strip.capitalize, tag_path(tag.strip), class:"btn btn-sm btn-light" }.join(" ")
    end
    
    def tag_links(tags)
        tags.split(",").map{|tag| link_to tag.strip.capitalize, tag_path(tag.strip), class:"date-sm" }.join(" ") 
    end
end
