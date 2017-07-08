require 'rails_helper'

RSpec.describe PublicHolidaysController, type: :routing do
  describe 'routing' do

    it 'routes to #index' do
      expect(:get => '/public_holidays').to route_to('public_holidays#index')
    end

    it 'routes to #new' do
      expect(:get => '/public_holidays/new').to route_to('public_holidays#new')
    end

    it 'routes to #show' do
      expect(:get => '/public_holidays/1').to route_to('public_holidays#show', :id => '1')
    end

    it 'routes to #edit' do
      expect(:get => '/public_holidays/1/edit').to route_to('public_holidays#edit', :id => '1')
    end

    it 'routes to #create' do
      expect(:post => '/public_holidays').to route_to('public_holidays#create')
    end

    it 'routes to #update via PUT' do
      expect(:put => '/public_holidays/1').to route_to('public_holidays#update', :id => '1')
    end

    it 'routes to #update via PATCH' do
      expect(:patch => '/public_holidays/1').to route_to('public_holidays#update', :id => '1')
    end

    it 'routes to #destroy' do
      expect(:delete => '/public_holidays/1').to route_to('public_holidays#destroy', :id => '1')
    end

  end
end
