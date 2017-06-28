Rails.application.routes.draw do
  devise_for :users
	  resources :public_holidays
	  resources :work_schedules
	  resources :holidays
	  resources :users  

	root to: 'holidays#index'
end
