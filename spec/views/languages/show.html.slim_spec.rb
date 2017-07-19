require 'rails_helper'

RSpec.describe 'languages/show', type: :view do
  before(:each) do
    @language = assign(:language, Language.create!(
                                    language: 'Language',
                                    speaking: 2,
                                    writing: 3,
                                    reading: 4,
                                    curriculum: nil
    ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Language/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(//)
  end
end
