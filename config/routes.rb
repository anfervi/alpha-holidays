Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
	  resources :public_holidays
	  resources :work_schedules
	  resources :holidays
	  resources :users  

  resources :holidays do
  	member do
  		get 'validate'
  		get 'reject'  
  	end
  end

  resources :admin
	root to: 'holidays#index'
end
