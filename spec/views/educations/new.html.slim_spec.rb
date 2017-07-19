require 'rails_helper'

RSpec.describe 'educations/new', type: :view do
  before(:each) do
    assign(:education, Education.new(
                         type: 1,
                         title: 'MyString',
                         center: 'MyString',
                         city: 'MyString',
                         duration: 1,
                         curriculum: nil
    ))
  end

  it 'renders new education form' do
    render

    assert_select 'form[action=?][method=?]', educations_path, 'post' do
      assert_select 'input[name=?]', 'education[type]'

      assert_select 'input[name=?]', 'education[title]'

      assert_select 'input[name=?]', 'education[center]'

      assert_select 'input[name=?]', 'education[city]'

      assert_select 'input[name=?]', 'education[duration]'

      assert_select 'input[name=?]', 'education[curriculum_id]'
    end
  end
end
