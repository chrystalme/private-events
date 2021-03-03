Rails.application.routes.draw do
  root 'users#show'
  # get 'users/new'
  # get 'users/show'
  get 'users/sign_in'
  get 'sign_in', to: 'users#new'
  post 'sign_in', to: 'sessions#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: %i[new create show]
  # resources :events
end
