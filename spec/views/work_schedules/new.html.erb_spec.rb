require 'rails_helper'

RSpec.describe "work_schedules/new", type: :view do
  before(:each) do
    assign(:work_schedule, WorkSchedule.new(
      :name => "MyString",
      :company => "MyString",
      :year => "MyString",
      :holiday => nil
    ))
  end

  it "renders new work_schedule form" do
    render

    assert_select "form[action=?][method=?]", work_schedules_path, "post" do

      assert_select "input[name=?]", "work_schedule[name]"

      assert_select "input[name=?]", "work_schedule[company]"

      assert_select "input[name=?]", "work_schedule[year]"

      assert_select "input[name=?]", "work_schedule[holiday_id]"
    end
  end
end
