require 'rails_helper'

RSpec.describe Holiday, type: :model do

	it "should belongs_to user" do
		expect(Holiday.reflect_on_association(:user).macro).to eq :belongs_to
	end

	it "should have_one work_schedule" do
		expect(Holiday.reflect_on_association(:work_schedule).macro).to eq :has_one
	end
end
