class Article < ActiveRecord::Base
    belongs_to :user
    acts_as_votable
    
    has_many :comments
    #has_many :bookmarks, dependent: :destroy
end
