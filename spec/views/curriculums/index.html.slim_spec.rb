require 'rails_helper'

RSpec.describe "curriculums/index", type: :view do
  before(:each) do
    assign(:curriculums, [
      Curriculum.create!(
        :adress => "Adress",
        :postal_code => "Postal Code",
        :city => "City",
        :phone => "Phone",
        :nationality => "Nationality",
        :user => nil
      ),
      Curriculum.create!(
        :adress => "Adress",
        :postal_code => "Postal Code",
        :city => "City",
        :phone => "Phone",
        :nationality => "Nationality",
        :user => nil
      )
    ])
  end

  it "renders a list of curriculums" do
    render
    assert_select "tr>td", :text => "Adress".to_s, :count => 2
    assert_select "tr>td", :text => "Postal Code".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Nationality".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
