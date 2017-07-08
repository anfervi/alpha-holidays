require 'spec_helper'

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

	it 'should have_many holidays' do
		expect(User.reflect_on_association(:holidays).macro).to eq :has_many
	end

	it 'should be valid with name, lastname, department, email, role and password' do
		expect(@user).to be_valid
	end

	it 'should not be valid without a name' do
		@user.name = nil
		expect(@user).to_not be_valid
	end

	it 'should not be valid without a lastname' do
		@user.lastname = nil
		expect(@user).to_not be_valid
	end

	it 'should not be valid without a department' do
		@user.department = nil
		expect(@user).to_not be_valid
	end

	it 'should not be valid without a email' do
		@user.email = nil
		expect(@user).to_not be_valid
	end

	it 'should not be valid without a role' do
		@user.role = nil
		expect(@user).to_not be_valid
	end

	it 'should not be valid without a password' do
		@user.password = nil
		expect(@user).to_not be_valid
	end
end
