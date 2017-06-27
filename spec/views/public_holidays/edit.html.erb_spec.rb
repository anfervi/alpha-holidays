require 'rails_helper'

RSpec.describe "public_holidays/edit", type: :view do
  before(:each) do
    @public_holiday = assign(:public_holiday, PublicHoliday.create!(
      :name => "MyString",
      :work_calendar => nil
    ))
  end

  it "renders the edit public_holiday form" do
    render

    assert_select "form[action=?][method=?]", public_holiday_path(@public_holiday), "post" do

      assert_select "input[name=?]", "public_holiday[name]"

      assert_select "input[name=?]", "public_holiday[work_calendar_id]"
    end
  end
end
