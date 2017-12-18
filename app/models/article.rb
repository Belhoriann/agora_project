class Article < ActiveRecord::Base
    # Ensures that all fields are filled by the writer before posting the article
    validates :title, :sub_title, :body, :category_id, :presence => true
    
    belongs_to :user
    belongs_to :category
    
    acts_as_votable
    
    has_many :comments
    #has_many :bookmarks, dependent: :destroy
end
