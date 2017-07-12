require 'rails_helper'

RSpec.describe User, type: :model do
	it { is_expected.to have_many(:holidays) }
	it { is_expected.to validate_presence_of(:name) }
	it { is_expected.to validate_presence_of(:lastname) }
	it { is_expected.to validate_presence_of(:department) }
	it { is_expected.to validate_presence_of(:email) }
	it { is_expected.to validate_presence_of(:role) }
	it { is_expected.to validate_presence_of(:password) }
end
