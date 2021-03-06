# frozen_string_literal: true

Rails.application.routes.draw do
  # get 'events/new'
  # get 'events/index'
  # get 'users/new'
  # get 'users/show'
  root 'users#show'

  post 'event_create', to: 'events#create'
  # get 'events/:id'
  resources :events, except: %i[edit delete]
  resources :users, only: %i[new create show]
  get 'sign_up', to: 'users#new'
  post 'sign_up', to: 'users#create'

  get 'sign_in', to: 'sessions#new'
  post 'sign_in', to: 'sessions#create'

  delete 'logout', to: 'sessions#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
