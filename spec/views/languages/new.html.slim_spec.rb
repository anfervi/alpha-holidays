require 'rails_helper'

RSpec.describe 'languages/new', type: :view do
  before(:each) do
    assign(:language, Language.new(
                        language: 'MyString',
                        speaking: 1,
                        writing: 1,
                        reading: 1,
                        curriculum: nil
    ))
  end

  it 'renders new language form' do
    render

    assert_select 'form[action=?][method=?]', languages_path, 'post' do
      assert_select 'input[name=?]', 'language[language]'

      assert_select 'input[name=?]', 'language[speaking]'

      assert_select 'input[name=?]', 'language[writing]'

      assert_select 'input[name=?]', 'language[reading]'

      assert_select 'input[name=?]', 'language[curriculum_id]'
    end
  end
end
