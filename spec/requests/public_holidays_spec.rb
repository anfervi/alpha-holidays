require 'rails_helper'

RSpec.describe "PublicHolidays", type: :request do
  describe "GET /public_holidays" do
    it "works! (now write some real specs)" do
      get public_holidays_path
      expect(response).to have_http_status(200)
    end
  end
end
