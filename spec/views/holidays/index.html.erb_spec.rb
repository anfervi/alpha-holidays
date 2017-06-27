require 'rails_helper'

RSpec.describe "holidays/index", type: :view do
  before(:each) do
    assign(:holidays, [
      Holiday.create!(
        :year => "Year",
        :status => 2,
        :validator_id => 3,
        :title => "Title",
        :description => "MyText",
        :user => nil
      ),
      Holiday.create!(
        :year => "Year",
        :status => 2,
        :validator_id => 3,
        :title => "Title",
        :description => "MyText",
        :user => nil
      )
    ])
  end

  it "renders a list of holidays" do
    render
    assert_select "tr>td", :text => "Year".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
