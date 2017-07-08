# WorkSchedule
class WorkSchedule < ApplicationRecord
  belongs_to :holiday
  has_many :public_holidays
end
