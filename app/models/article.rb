class Article < ActiveRecord::Base
    # Ensures that all fields are filled by the writer before posting the article
    validates :title, :sub_title, :body, :category_id, :thumbnail, :all_tags, :presence => true
    
    acts_as_votable
    
    belongs_to :user
    belongs_to :category
    
    has_many :taggings
    has_many :tags, through: :taggings
    
    has_many :comments, as: :commentable, dependent: :destroy
    
    # Thumbnail system
    has_attached_file :thumbnail, styles: { large:"1280x900>", medium: "640x480>", thumb: "100x100>" }, default_url: "/assets/635x421.jpg"
    validates_attachment_content_type :thumbnail, content_type: /\Aimage\/.*\z/
    
    # Search method
    def self.search(search)
     where("title LIKE ? OR sub_title LIKE ?", "%#{search}%", "%#{search}%") 
    end
    
    # Methods related to the tag system
    def all_tags=(names)
        self.tags = names.split(",").map do |name|
            Tag.where(name: name.strip).first_or_create!
        end
    end
    
    def all_tags
        self.tags.map(&:name).sort.join(", ")
    end
    
    def self.tagged_with(name)
        Tag.find_by_name!(name).articles
    end
end
