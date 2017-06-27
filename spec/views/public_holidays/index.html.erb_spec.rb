require 'rails_helper'

RSpec.describe "public_holidays/index", type: :view do
  before(:each) do
    assign(:public_holidays, [
      PublicHoliday.create!(
        :name => "Name",
        :work_calendar => nil
      ),
      PublicHoliday.create!(
        :name => "Name",
        :work_calendar => nil
      )
    ])
  end

  it "renders a list of public_holidays" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
