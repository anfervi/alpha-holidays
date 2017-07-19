require 'rails_helper'

RSpec.describe 'educations/edit', type: :view do
  before(:each) do
    @education = assign(:education, Education.create!(
                                      type: 1,
                                      title: 'MyString',
                                      center: 'MyString',
                                      city: 'MyString',
                                      duration: 1,
                                      curriculum: nil
    ))
  end

  it 'renders the edit education form' do
    render

    assert_select 'form[action=?][method=?]', education_path(@education), 'post' do
      assert_select 'input[name=?]', 'education[type]'

      assert_select 'input[name=?]', 'education[title]'

      assert_select 'input[name=?]', 'education[center]'

      assert_select 'input[name=?]', 'education[city]'

      assert_select 'input[name=?]', 'education[duration]'

      assert_select 'input[name=?]', 'education[curriculum_id]'
    end
  end
end
