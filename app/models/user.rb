# User
class User < ApplicationRecord
  mount_uploader :avatar, AvatarUploader
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable
  attr_accessor :avatar_cache, :remove_avatar
  validates :name, presence: true
  validates :lastname, presence: true
  validates :email, presence: true, uniqueness: true
  validates :department, presence: true
  validates :role, presence: true
  has_many :holidays
  enum role: { admin: 0, manager: 1, employee: 2 }
end
