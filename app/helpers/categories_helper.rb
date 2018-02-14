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
  
  def set_scrollspy_id(category)
    case(category)
      when "Aerospace" then "a"
      when "Archeology" then "a"
      when "Artificial Intelligence" then "a"
      when "Biology" then "b"
      when "Chemistry" then "c"
      when "Communications" then "c"
      when "Cosmology" then "c"
      when "Computer Science" then "c"
      when "Cryptocurrency" then "c"
      when "Energy" then "e"
      when "Environment" then "e"
      when "Geology" then "g"
      when "Health" then "h"
      when "Mathematics" then "m"
      when "Neuroscience" then "n"
      when "Nanotechnology" then "n"
      when "Physics" then "p"
      when "Transport" then "t"
      when "Technology" then "t"
      when "Zoology" then "z"
    end
  end
end
