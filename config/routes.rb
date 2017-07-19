Rails.application.routes.draw do
  resources :languages
  resources :educations
  resources :curriculums
  devise_for :users
  resources :public_holidays
  resources :work_schedules
  resources :holidays
  resources :users
  devise_scope :user do
    get '/login' => 'devise/sessions#new'
    get '/logout' => 'devise/sessions#destroy'
  end
  resources :holidays do
    member do
      get 'validate'
      get 'reject'
    end
  end
  resource :user, only: [:edit] do
    collection do
      patch 'update_password'
    end
  end

  resources :admin
  root to: 'holidays#index'
end
