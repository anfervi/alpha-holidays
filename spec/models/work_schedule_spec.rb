require 'rails_helper'

RSpec.describe WorkSchedule, type: :model do
  it { is_expected.to belong_to(:holiday) }
  it { is_expected.to has_many(:public_holidays) }
end
