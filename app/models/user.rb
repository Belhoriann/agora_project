class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
         # acts_as_votable gem logic, allows to check if current_user.voted_for? @article 
         acts_as_voter
         
         has_many :articles
         has_many :comments
end
