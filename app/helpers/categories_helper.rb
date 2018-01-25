module CategoriesHelper
  def category_img(category)
    case(category)
      when "Aerospace" then "http://leandesign.com/wp/wp-content/uploads/2013/07/aerospace-banner-03.jpg"
      when "Physics" then "https://ak3.picdn.net/shutterstock/videos/13176443/thumb/1.jpg"
      when "Communications" then "http://www.mobileworld.it/wp-content/uploads/2016/05/reti-mobili-final-istock-4-800x461.jpg"
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
