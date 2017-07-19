require 'rails_helper'

RSpec.describe 'work_experiences/show', type: :view do
  before(:each) do
    @work_experience = assign(:work_experience, WorkExperience.create!(
                                                  position: 'Position',
                                                  company: 'Company',
                                                  city: 'City',
                                                  activities: 'MyText',
                                                  technologies: 'MyText',
                                                  curriculum: nil
    ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Position/)
    expect(rendered).to match(/Company/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
  end
end
