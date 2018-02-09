class Tag < ApplicationRecord
    has_many :taggings
    has_many :articles, through: :taggings
    
    # Search method
    def self.search(search)
        where("name LIKE ?", "%#{search}%") 
    end
    
    # Count the number of occurence of a tag
    def self.counts
        self.select("name, count(taggings.tag_id) as count").joins(:taggings).group("taggings.tag_id")
    end
    
    # Related tags = Aggregation of all the other tags used along a specific one
    def related_tags(name)

        # Declaration of an empty array which will store all related tags
        all_related_tags_array = Array.new
        
        Tag.find_by_name(name).articles.each do |tagged_article|
            # Accumulation of all the related tags taken from each article where the specific tag appears
            t = 0
            tags_count = tagged_article.tags.size

            while t < tags_count
                all_related_tags_array.push(tagged_article.all_tags.split(',')[t].strip)
                t += 1
            end
        end
        # Remove the original tag
        all_related_tags_array.delete(name)
        
        # Remove redundant tags
        i = 0
        while i < all_related_tags_array.length
            if all_related_tags_array.count(all_related_tags_array[i]) > 1
                redundant_name = all_related_tags_array[i]
                all_related_tags_array.delete(all_related_tags_array[i])
                all_related_tags_array.push(redundant_name)
            end
            i += 1
        end
        
        # Return the final array with the related tags, tranformed into a string with commas
        all_related_tags_array.map(&:inspect).sort_by(&:downcase).join(', ').gsub!('"', '')
    end
end
