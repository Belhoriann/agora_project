class Article < ActiveRecord::Base
    belongs_to :user
    belongs_to :category
    
    acts_as_votable
    
    has_many :comments
    #has_many :bookmarks, dependent: :destroy
end
