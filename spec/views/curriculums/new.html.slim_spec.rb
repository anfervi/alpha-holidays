require 'rails_helper'

RSpec.describe 'curriculums/new', type: :view do
  before(:each) do
    assign(:curriculum, Curriculum.new(
                          adress: 'MyString',
                          postal_code: 'MyString',
                          city: 'MyString',
                          phone: 'MyString',
                          nationality: 'MyString',
                          user: nil
    ))
  end

  it 'renders new curriculum form' do
    render

    assert_select 'form[action=?][method=?]', curriculums_path, 'post' do
      assert_select 'input[name=?]', 'curriculum[adress]'

      assert_select 'input[name=?]', 'curriculum[postal_code]'

      assert_select 'input[name=?]', 'curriculum[city]'

      assert_select 'input[name=?]', 'curriculum[phone]'

      assert_select 'input[name=?]', 'curriculum[nationality]'

      assert_select 'input[name=?]', 'curriculum[user_id]'
    end
  end
end
