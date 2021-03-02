Rails.application.routes.draw do
  # get 'users/new'
  get 'users/sign_in'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: %i[new create show]
end
