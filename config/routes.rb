Rails.application.routes.draw do
  get 'appointments/index'
  get 'appointments/show'
  get 'appointments/new'
  get 'appointments/edit'
  root 'users#index'


  resources :users 
  resources :doctors
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
