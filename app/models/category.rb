class Category < ActiveRecord::Base
    has_many :articles, dependent: :destroy
    
    acts_as_votable
    
    # Search method
    def self.search(search)
     where("name LIKE ?", "%#{search}%") 
    end
end
