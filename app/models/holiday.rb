class Holiday < ActiveRecord::Base
  belongs_to :user, optional: true
  has_one :work_schedule

end
