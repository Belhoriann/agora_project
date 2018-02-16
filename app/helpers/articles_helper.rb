module ArticlesHelper
    def tag_buttons(tags)
        tags.split(",").map{|tag| link_to tag.strip.capitalize, tag_path(tag.strip), class:"btn btn-sm btn-light mr-1 mb-2" }.join(" ")
    end
    
    def tag_links(tags)
        tags.split(",").map{|tag| link_to tag.strip.capitalize, tag_path(tag.strip), class:"date-sm" }.join(" - ") 
    end
    
    def rating(article)
        article.get_upvotes(:vote_scope => 'praise').size.to_f/(article.get_upvotes(:vote_scope => 'praise').size.to_f + article.get_downvotes(:vote_scope => 'praise').size.to_f)*100
    end
    
    # Determine which certificate must be drawn depending of the article rating
    def certificate(article)
        if rating(article).between?(90,100)
            content_tag(:i, "", class:"mdi mdi-certificate gold")
        elsif rating(article).between?(80,89)
            content_tag(:i, "", class:"mdi mdi-certificate silver")
        elsif rating(article).between?(70,79) 
            content_tag(:i, "", class:"mdi mdi-certificate bronze")
        end
    end
end
