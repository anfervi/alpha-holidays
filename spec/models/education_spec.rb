require 'rails_helper'

RSpec.describe Education, type: :model do
  it { is_expected.to belong_to(:curriculum) }
end
