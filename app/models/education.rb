class Education < ApplicationRecord
  belongs_to :curriculum
  enum type: { course: 0, training: 1, degree: 2 }
end
