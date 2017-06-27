class User < ApplicationRecord
	devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable

	validates :name, presence: true
	validates :lastname, presence: true
	validates :email, presence: true, uniqueness: true
	validates :department, presence: true
	validates :role, presence: true

	has_many :holidays

	enum user_roles: { admin: 0, manager: 1, employee: 2}

end
