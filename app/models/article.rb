class Article < ActiveRecord::Base
    # Ensures that all fields are filled by the writer before posting the article
    validates :title, :sub_title, :body, :category_id, :thumbnail, :presence => true
    
    belongs_to :user
    belongs_to :category
    
    acts_as_votable
    
    has_many :comments, as: :commentable, dependent: :destroy
    
    # Thumbnail system
    has_attached_file :thumbnail, styles: { large:"1280x900>", medium: "640x480>", thumb: "100x100>" }, default_url: "/assets/635x421.jpg"
    validates_attachment_content_type :thumbnail, content_type: /\Aimage\/.*\z/
    
    # Search method
    def self.search(search)
     where("title LIKE ? OR sub_title LIKE ?", "%#{search}%", "%#{search}%") 
    end
end
