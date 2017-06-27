Rails.application.routes.draw do
  devise_for :users
	  resources :public_holidays
	  resources :work_schedules
	  resources :holidays
	  resources :users  
end
