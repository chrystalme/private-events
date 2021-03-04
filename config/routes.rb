Rails.application.routes.draw do
  # get 'users/new'
  # get 'users/show'
  root 'users#show'
  resources :users, only: %i[new create show]
  
  delete 'logout', to: 'sessions#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
