Rails.application.routes.draw do
<<<<<<< HEAD
  root 'users#show'
  get 'events/index'
  # get 'users/show'
  get 'users/sign_in'
  get 'sign_in', to: 'users#new'
  post 'sign_in', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: %i[new create show]
  resources :events
  # resources :sessions, only: %i[new create destroy]
=======
  # get 'events/new'
  # get 'events/index'
  # get 'users/new'
  # get 'users/show'
  root 'users#show'

 
  post 'event_create', to: "events#create"
  # get 'events/:id'
 resources :events, except: %i[ edit delete ]
  resources :users, only: %i[new create show]
  get 'sign_up', to: "users#new"
  post 'sign_up', to: "users#create"

  get 'sign_in', to: "sessions#new"
  post 'sign_in', to: "sessions#create"

  delete 'logout', to: 'sessions#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
>>>>>>> dd4ec7d55667483125df01c863d8106849ec84e5
end
