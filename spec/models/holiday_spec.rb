require 'rails_helper'

RSpec.describe Holiday, type: :model do
  it { is_expected.to belong_to(:user) }
  it { is_expected.to have_one(:work_schedule) }
end
