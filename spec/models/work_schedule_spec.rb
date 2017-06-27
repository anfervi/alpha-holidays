require 'rails_helper'

RSpec.describe WorkSchedule, type: :model do

	it "should belongs_to holiday" do
		expect(WorkSchedule.reflect_on_association(:holiday).macro).to eq :belongs_to
	end

	it "should has_many public_holidays" do
		expect(WorkSchedule.reflect_on_association(:public_holidays).macro).to eq :has_many
	end
end
