require 'spec_helper'
require 'rails_helper'

RSpec.describe HolidayPolicy do
  subject { HolidayPolicy }


  describe User do
    before :each do
      @user = User.new
      @user.name = 'Angel'
      @user.lastname = 'Fernández'
      @user.department = 'Imagen Médica'
      @user.email = 'angelfervi@gmail.com'
      @user.password = 'Alfatec2017'
      @user.role = 0
    end

  permissions :validate? do
    it "grants validation for holiday request if user is admin or manager" do
      expect(@holiday).not_to permit(User.new(:role => 0, :role => 1))
    end

    it "decline validation for holiday request if user is employee" do
      expect(@holiday).to permit(User.new(:employee => true))
    end
  end

  permissions :reject? do
    it "grants rejection for holiday request if user is admin or manager" do
      expect(@holiday).not_to permit(User.new(:admin => true, :manager => true))
    end

    it "decline rejection for holiday request if user is employee" do
      expect(@holiday).to permit(User.new(:employee => true))
    end
  end
end
