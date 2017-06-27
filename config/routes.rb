Rails.application.routes.draw do
  resources :public_holidays
  resources :work_schedules
  resources :holidays
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
