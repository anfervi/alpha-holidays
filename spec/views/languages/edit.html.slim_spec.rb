require 'rails_helper'

RSpec.describe 'languages/edit', type: :view do
  before(:each) do
    @language = assign(:language, Language.create!(
                                    language: 'MyString',
                                    speaking: 1,
                                    writing: 1,
                                    reading: 1,
                                    curriculum: nil
    ))
  end

  it 'renders the edit language form' do
    render

    assert_select 'form[action=?][method=?]', language_path(@language), 'post' do
      assert_select 'input[name=?]', 'language[language]'

      assert_select 'input[name=?]', 'language[speaking]'

      assert_select 'input[name=?]', 'language[writing]'

      assert_select 'input[name=?]', 'language[reading]'

      assert_select 'input[name=?]', 'language[curriculum_id]'
    end
  end
end
