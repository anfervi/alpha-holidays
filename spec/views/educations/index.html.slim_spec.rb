require 'rails_helper'

RSpec.describe 'educations/index', type: :view do
  before(:each) do
    assign(:educations, [
             Education.create!(
               type: 2,
               title: 'Title',
               center: 'Center',
               city: 'City',
               duration: 3,
               curriculum: nil
             ),
             Education.create!(
               type: 2,
               title: 'Title',
               center: 'Center',
               city: 'City',
               duration: 3,
               curriculum: nil
             )
           ])
  end

  it 'renders a list of educations' do
    render
    assert_select 'tr>td', text: 2.to_s, count: 2
    assert_select 'tr>td', text: 'Title'.to_s, count: 2
    assert_select 'tr>td', text: 'Center'.to_s, count: 2
    assert_select 'tr>td', text: 'City'.to_s, count: 2
    assert_select 'tr>td', text: 3.to_s, count: 2
    assert_select 'tr>td', text: nil.to_s, count: 2
  end
end
