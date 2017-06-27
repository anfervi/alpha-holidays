require 'rails_helper'

RSpec.describe "work_schedules/index", type: :view do
  before(:each) do
    assign(:work_schedules, [
      WorkSchedule.create!(
        :name => "Name",
        :company => "Company",
        :year => "Year",
        :holiday => nil
      ),
      WorkSchedule.create!(
        :name => "Name",
        :company => "Company",
        :year => "Year",
        :holiday => nil
      )
    ])
  end

  it "renders a list of work_schedules" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Company".to_s, :count => 2
    assert_select "tr>td", :text => "Year".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
