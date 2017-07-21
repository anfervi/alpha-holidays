require 'rails_helper'

RSpec.describe 'work_experiences/edit', type: :view do
  before(:each) do
    @work_experience = assign(:work_experience, WorkExperience.create!(
                                                  position: 'MyString',
                                                  company: 'MyString',
                                                  city: 'MyString',
                                                  activities: 'MyText',
                                                  technologies: 'MyText',
                                                  curriculum: nil
    ))
  end

  it 'renders the edit work_experience form' do
    render

    assert_select 'form[action=?][method=?]', work_experience_path(@work_experience), 'post' do
      assert_select 'input[name=?]', 'work_experience[position]'

      assert_select 'input[name=?]', 'work_experience[company]'

      assert_select 'input[name=?]', 'work_experience[city]'

      assert_select 'textarea[name=?]', 'work_experience[activities]'

      assert_select 'textarea[name=?]', 'work_experience[technologies]'

      assert_select 'input[name=?]', 'work_experience[curriculum_id]'
    end
  end
end
