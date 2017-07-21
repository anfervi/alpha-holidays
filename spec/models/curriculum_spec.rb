require 'rails_helper'

RSpec.describe Curriculum, type: :model do
  it { is_expected.to belong_to(:user) }
  it { is_expected.to have_many(:educations) }
  it { is_expected.to have_many(:languages) }
  it { is_expected.to have_many(:work_experiences) }
end
