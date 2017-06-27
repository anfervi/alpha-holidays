require 'rails_helper'

RSpec.describe "work_schedules/show", type: :view do
  before(:each) do
    @work_schedule = assign(:work_schedule, WorkSchedule.create!(
      :name => "Name",
      :company => "Company",
      :year => "Year",
      :holiday => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Company/)
    expect(rendered).to match(/Year/)
    expect(rendered).to match(//)
  end
end
