require 'rails_helper'

RSpec.describe "holidays/show", type: :view do
  before(:each) do
    @holiday = assign(:holiday, Holiday.create!(
      :year => "Year",
      :status => 2,
      :validator_id => 3,
      :title => "Title",
      :description => "MyText",
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Year/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
  end
end
