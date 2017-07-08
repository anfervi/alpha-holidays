require 'rails_helper'

RSpec.describe PublicHoliday, type: :model do
	it 'should belongs_to work_schedule' do
		expect(PublicHoliday.reflect_on_association(:work_schedule).macro).to eq :belongs_to
	end
end
