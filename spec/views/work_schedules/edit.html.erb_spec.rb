require 'rails_helper'

RSpec.describe "work_schedules/edit", type: :view do
  before(:each) do
    @work_schedule = assign(:work_schedule, WorkSchedule.create!(
      :name => "MyString",
      :company => "MyString",
      :year => "MyString",
      :holiday => nil
    ))
  end

  it "renders the edit work_schedule form" do
    render

    assert_select "form[action=?][method=?]", work_schedule_path(@work_schedule), "post" do

      assert_select "input[name=?]", "work_schedule[name]"

      assert_select "input[name=?]", "work_schedule[company]"

      assert_select "input[name=?]", "work_schedule[year]"

      assert_select "input[name=?]", "work_schedule[holiday_id]"
    end
  end
end
