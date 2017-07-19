require 'rails_helper'

RSpec.describe "curriculums/edit", type: :view do
  before(:each) do
    @curriculum = assign(:curriculum, Curriculum.create!(
      :adress => "MyString",
      :postal_code => "MyString",
      :city => "MyString",
      :phone => "MyString",
      :nationality => "MyString",
      :user => nil
    ))
  end

  it "renders the edit curriculum form" do
    render

    assert_select "form[action=?][method=?]", curriculum_path(@curriculum), "post" do

      assert_select "input[name=?]", "curriculum[adress]"

      assert_select "input[name=?]", "curriculum[postal_code]"

      assert_select "input[name=?]", "curriculum[city]"

      assert_select "input[name=?]", "curriculum[phone]"

      assert_select "input[name=?]", "curriculum[nationality]"

      assert_select "input[name=?]", "curriculum[user_id]"
    end
  end
end
