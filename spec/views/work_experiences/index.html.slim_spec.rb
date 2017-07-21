require 'rails_helper'

RSpec.describe 'work_experiences/index', type: :view do
  before(:each) do
    assign(:work_experiences, [
             WorkExperience.create!(
               position: 'Position',
               company: 'Company',
               city: 'City',
               activities: 'MyText',
               technologies: 'MyText',
               curriculum: nil
             ),
             WorkExperience.create!(
               position: 'Position',
               company: 'Company',
               city: 'City',
               activities: 'MyText',
               technologies: 'MyText',
               curriculum: nil
             )
           ])
  end

  it 'renders a list of work_experiences' do
    render
    assert_select 'tr>td', text: 'Position'.to_s, count: 2
    assert_select 'tr>td', text: 'Company'.to_s, count: 2
    assert_select 'tr>td', text: 'City'.to_s, count: 2
    assert_select 'tr>td', text: 'MyText'.to_s, count: 2
    assert_select 'tr>td', text: 'MyText'.to_s, count: 2
    assert_select 'tr>td', text: nil.to_s, count: 2
  end
end
