require 'rails_helper'

RSpec.describe 'work_experiences/new', type: :view do
  before(:each) do
    assign(:work_experience, WorkExperience.new(
                               position: 'MyString',
                               company: 'MyString',
                               city: 'MyString',
                               activities: 'MyText',
                               technologies: 'MyText',
                               curriculum: nil
    ))
  end

  it 'renders new work_experience form' do
    render

    assert_select 'form[action=?][method=?]', work_experiences_path, 'post' do
      assert_select 'input[name=?]', 'work_experience[position]'

      assert_select 'input[name=?]', 'work_experience[company]'

      assert_select 'input[name=?]', 'work_experience[city]'

      assert_select 'textarea[name=?]', 'work_experience[activities]'

      assert_select 'textarea[name=?]', 'work_experience[technologies]'

      assert_select 'input[name=?]', 'work_experience[curriculum_id]'
    end
  end
end
