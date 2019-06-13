Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  resources :users
  resources :to_dos
  resources :events
  resources :shopping_items
  resources :expenses

  get 'signup', to: 'users#create', as: 'signup'
  get 'login', to: 'sessions#create', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  get 'to_dos/user/:id', to: 'to_dos#user_todos'
  get 'to_dos/done/user/:id', to: 'to_dos#all_done'
  get 'to_dos/undone/user/:id', to: 'to_dos#all_undone'
  get 'home/:id', to: 'homes#show'
end
