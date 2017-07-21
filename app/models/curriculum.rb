# Curriculum
class Curriculum < ApplicationRecord
  belongs_to :user
  has_many :educations, dependent: :destroy
  has_many :work_experiences, dependent: :destroy
  has_many :languages, dependent: :destroy
end
