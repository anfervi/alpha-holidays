require 'rails_helper'

RSpec.describe WorkExperience, type: :model do
  it { is_expected.to belong_to(:curriculum) }
end
