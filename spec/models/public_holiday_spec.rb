require 'rails_helper'

RSpec.describe PublicHoliday, type: :model do
  it { is_expected.to belong_to(:work_schedule) }
end
