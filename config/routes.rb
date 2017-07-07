Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
    resources :public_holidays
    resources :work_schedules
    resources :holidays
    resources :users
  devise_scope :user do
    get "/login" => "devise/sessions#new"
    get "/logout" => "devise/sessions#destroy"
  end

  resources :holidays do
    member do
      get 'validate'
      get 'reject'
    end
  end

  resources :admin
  root to: 'holidays#index'
end
