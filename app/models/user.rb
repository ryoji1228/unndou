class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
         has_many :exercises
         has_many :measurements
         has_many :posts
         has_many :likes
         has_many :goals
         
         mount_uploader :avatar, AvatarUploader
end
         
