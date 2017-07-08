# Holiday
class Holiday < ActiveRecord::Base
  belongs_to :user
  has_one :work_schedule
end
