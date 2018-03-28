class User < ApplicationRecord
  ############################################################################################
  ## PeterGate Roles                                                                        ##
  ## The :user role is added by default and shouldn't be included in this list.             ##
  ## The :root_admin can access any page regardless of access settings. Use with caution!   ##
  ## The multiple option can be set to true if you need users to have multiple roles.       ##
   petergate(roles: [:root_admin], multiple: true)                                      ##
  ############################################################################################ 
 
  has_many :given_ratings, class_name: 'Rating', foreign_key: 'user_id', dependent: :destroy
  has_many :user_items, dependent: :destroy
  has_many :items, through: :user_items
  has_many :ratings, dependent: :destroy

  validates :first_name, presence: true 
  validates :last_name, presence: true

  # def full_name
  #   first_name = User.first_name
  #   last_name = User.last_name
  #   return first_name + last_name
  # end
  #current_user & User is undefined variable. or first_name & last_name is an undefined method

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
