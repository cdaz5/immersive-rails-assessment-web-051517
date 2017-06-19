Rails.application.routes.draw do
  resources :appearances
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'users#index', as: 'homepage'
  resources :guests, only: [:index]
  get 'guests/:id', to: 'guests#show', as: 'guest'
  resources :episodes, only: [:index]
  get 'episodes/:id', to: 'episodes#show', as: 'episode'
  resources :users, except: [:new, :index]
  get 'users/new', to: 'users#new', as: 'signup'
  get 'sessions/new', to: 'sessions#new', as: 'login'
  get '/logout', to: 'sessions#destroy', as: 'logout'
  resources :sessions, except: [:new, :index, :show]

end
