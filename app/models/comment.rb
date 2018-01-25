class Comment < ActiveRecord::Base
  # Ensures that all fields are filled by the writer before posting the article
  validates :body, :presence => true

  belongs_to :user
  belongs_to :commentable, polymorphic: true
  
  acts_as_votable
  
  has_many :comments, as: :commentable, dependent: :destroy

  # Because counter_cache does not count comments of comments, the following code does a manual incrementation of the "comments_count" column (integer)
  after_create :increment_count
  after_destroy :decrement_count

  def increment_count
    parent = commentable

      # Keep looping until we get to the parent which isn't a Comment model
      while parent.is_a? Comment
        parent = parent.commentable
      end
      parent.increment! :comments_count
  end

  def decrement_count
      parent = commentable

      # Keep looping until we get to the parent which isn't a Comment model
      while parent.is_a? Comment
        parent = parent.commentable
      end
      parent.decrement! :comments_count
  end
end
