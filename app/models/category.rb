class Category < ActiveRecord::Base
    has_many :articles
    
    acts_as_votable
end
