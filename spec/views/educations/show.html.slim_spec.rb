require 'rails_helper'

RSpec.describe 'educations/show', type: :view do
  before(:each) do
    @education = assign(:education, Education.create!(
                                      type: 2,
                                      title: 'Title',
                                      center: 'Center',
                                      city: 'City',
                                      duration: 3,
                                      curriculum: nil
    ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Center/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(//)
  end
end
