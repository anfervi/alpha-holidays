require 'spec_helper'
require 'rails_helper'

RSpec.describe HolidayPolicy do

  subject { HolidayPolicy.new(user, holiday)}

  let(:admin) { FactoryGirl.create(:admin) }
  let(:manager) { FactoryGirl.create(:manager) }
  let(:employee) { FactoryGirl.create(:employee) }
  let(:holidays) { FactoryGirl.create(:holiday) }

  shared_examples_for "someone fully authorized" do
    it { is_expected.to allow_action(:show) }
    it { is_expected.to allow_action(:index) }
    it { is_expected.to allow_action(:new) }
    it { is_expected.to allow_action(:create) }
    it { is_expected.to allow_action(:edit) }
    it { is_expected.to allow_action(:update) }
    it { is_expected.to allow_action(:destroy) }
  end

  context 'for an admin' do
    context 'over any holidays' do
      subject { HolidayPolicy.new(admin, holidays) }
      it_behaves_like "someone fully authorized"
    end
  end
end




  # context 'for a visitor' do
  #   let(:user) { nil }

  #   it { should_not permit(:validate)  }
  #   it { should_not permit(:reject)    }
  # end

  # context "for an admin" do
  #   let(:admin) { FactoryGirl.create(:admin, role: 'admin') }

  #   it { should permit(:validate)     }
  #   it { should permit(:reject)       }
  # end

  # context "for a manager" do
  #   let(:manager) { FactoryGirl.create(:manager, role: 'manager') }

  #   it { should permit(:validate)     }
  #   it { should permit(:reject)       }
  # end

  # context "for an employee" do
  #   let(:employee) { FactoryGirl.create(:employee, role: 'employee') }

  #   it { should_not permit(:validate)     }
  #   it { should_not permit(:reject)       }
  # end

