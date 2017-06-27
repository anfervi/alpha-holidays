require 'rails_helper'

RSpec.describe "public_holidays/new", type: :view do
  before(:each) do
    assign(:public_holiday, PublicHoliday.new(
      :name => "MyString",
      :work_calendar => nil
    ))
  end

  it "renders new public_holiday form" do
    render

    assert_select "form[action=?][method=?]", public_holidays_path, "post" do

      assert_select "input[name=?]", "public_holiday[name]"

      assert_select "input[name=?]", "public_holiday[work_calendar_id]"
    end
  end
end
