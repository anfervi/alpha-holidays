require 'rails_helper'

RSpec.describe "public_holidays/show", type: :view do
  before(:each) do
    @public_holiday = assign(:public_holiday, PublicHoliday.create!(
      :name => "Name",
      :work_calendar => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(//)
  end
end
