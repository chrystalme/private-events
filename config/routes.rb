Rails.application.routes.draw do
  # get 'users/new'
  # get 'users/create'
  # get 'users/show'
  resources :users, only: %i[new create show]
  devise_for :users, only: %i[new create show]
  # devise_scope :user do get '/users/sign_out' => 'devise/sessions#destroy' end 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
