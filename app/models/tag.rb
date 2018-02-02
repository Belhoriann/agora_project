class Tag < ApplicationRecord
    has_many :taggings
    has_many :articles, through: :taggings
    
    # Search method
    def self.search(search)
        where("name LIKE ?", "%#{search}%") 
    end
end
