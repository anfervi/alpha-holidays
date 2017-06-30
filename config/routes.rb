Rails.application.routes.draw do
  devise_for :users
	  resources :public_holidays
	  resources :work_schedules
	  resources :holidays
	  resources :users  

  resources :holidays do
	  collection do
	    post 'search_holiday'
	  end
  end

  resources :admin

	root to: 'holidays#index'
end
