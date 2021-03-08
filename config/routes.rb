Rails.application.routes.draw do
  root 'users#show'

  post 'event_create', to: 'events#create'

  resources :events
  resources :users, only: %i[new create show]
  resources :events, except: %i[destroy update edit] do
    member do
      get 'attend'
    end
  end
  get 'sign_up', to: 'users#new'
  post 'sign_up', to: 'users#create'

  get 'sign_in', to: 'sessions#new'
  post 'sign_in', to: 'sessions#create'

  delete 'logout', to: 'sessions#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
