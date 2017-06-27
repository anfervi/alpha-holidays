require 'rails_helper'

RSpec.describe "holidays/edit", type: :view do
  before(:each) do
    @holiday = assign(:holiday, Holiday.create!(
      :year => "MyString",
      :status => 1,
      :validator_id => 1,
      :title => "MyString",
      :description => "MyText",
      :user => nil
    ))
  end

  it "renders the edit holiday form" do
    render

    assert_select "form[action=?][method=?]", holiday_path(@holiday), "post" do

      assert_select "input[name=?]", "holiday[year]"

      assert_select "input[name=?]", "holiday[status]"

      assert_select "input[name=?]", "holiday[validator_id]"

      assert_select "input[name=?]", "holiday[title]"

      assert_select "textarea[name=?]", "holiday[description]"

      assert_select "input[name=?]", "holiday[user_id]"
    end
  end
end
