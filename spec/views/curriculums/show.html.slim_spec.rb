require 'rails_helper'

RSpec.describe "curriculums/show", type: :view do
  before(:each) do
    @curriculum = assign(:curriculum, Curriculum.create!(
      :adress => "Adress",
      :postal_code => "Postal Code",
      :city => "City",
      :phone => "Phone",
      :nationality => "Nationality",
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Adress/)
    expect(rendered).to match(/Postal Code/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/Phone/)
    expect(rendered).to match(/Nationality/)
    expect(rendered).to match(//)
  end
end
