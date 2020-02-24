Rails.application.routes.draw do
  get 'doctors/index'
  get 'doctors/show'
  get 'doctors/new'
  get 'doctors/edit'
  get 'users/index'
  get 'users/show'
  get 'users/new'
  get 'users/edit'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
