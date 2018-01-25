class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
     # acts_as_votable gem logic, allows to check if current_user.voted_for? @article 
     acts_as_voter
     acts_as_votable
     
     # Belongings
     has_many :articles
     has_many :comments
     
     # Avatar system
     has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100#" }, :default_url => "/assets/:style/missing.jpg"
     validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
end
