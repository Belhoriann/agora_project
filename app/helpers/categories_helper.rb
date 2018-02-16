module CategoriesHelper
  def category_img(category)
    case(category)
      when "Agricultural Sciences" then "http://metcranes.com/wp-content/uploads/2015/10/agricultural-processing.jpg"
      when "Engineering & Technology" then "http://www.stl-horizon.com/wp-content/uploads/2017/05/technology-591103f20ff18.jpg"
      when "Humanities" then "https://www.collegechoice.net/wp-content/uploads/2017/11/arts-humanities-1.jpg"
      when "Medical & Health Sciences" then "https://news.uthscsa.edu/wp-content/uploads/2016/03/3d-render-dna-structure.jpg"
      when "Natural Sciences" then "https://majors.missouri.edu/wp-content/uploads/physics-astronomy.jpg"
      when "Social Sciences" then "http://agu.ac.ug/wp-content/uploads/2017/04/20120314-qxasncwh2y7aaxcddexfxy18ay.jpg"
    else
      "//placehold.it/720x350"
    end
  end
  
  def related_tags_category(category)

    # Declaration of an empty array which will store all related tags
    related_tags_category_array = Array.new
    
    Article.where(category_id: category.id).each do |article|
      t = 0
      tags_count = article.tags.size
      
      while t < tags_count
          related_tags_category_array.push(article.all_tags.split(',')[t].strip)
          t += 1
      end
    end

    # Remove redundant tags
    i = 0
    while i < related_tags_category_array.length
        if related_tags_category_array.count(related_tags_category_array[i]) > 1
            redundant_name = related_tags_category_array[i]
            related_tags_category_array.delete(related_tags_category_array[i])
            related_tags_category_array.push(redundant_name)
        end
        i += 1
    end
    
    # Return the final array with the related tags, tranformed into a string with commas
    related_tags_category_array.map(&:inspect).sort_by(&:downcase).join(', ').gsub!('"', '')
  end
end
