class Holiday < ApplicationRecord
  belongs_to :user
  has_one :work_schedule
end
