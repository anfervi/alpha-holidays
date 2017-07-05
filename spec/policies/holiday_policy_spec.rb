require 'rails_helper'

RSpec.describe HolidayPolicy do
  let(:holiday) { FactoryGirl.create(:holiday) }

  context "for an admin" do
    subject { HolidayPolicy.new(create(:admin), holiday)}

    it { is_expected.to permit_action(:validate) }
    it { is_expected.to permit_action(:reject) }
  end

  context "for a manager" do
    subject { HolidayPolicy.new(create(:manager), holiday)}

    it { is_expected.to permit_action(:validate) }
    it { is_expected.to permit_action(:reject)   }
  end

  context "for an employee" do
    subject { HolidayPolicy.new(create(:employee), holiday)}

    it { is_expected.not_to permit_action(:validate)  }
    it { is_expected.not_to permit_action(:reject)    }
  end
end





