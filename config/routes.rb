Rails.application.routes.draw do
  # resources :cupcake_orders
  # resources :orders
  # resources :cupcakes
  # resources :users

  get '/', to: 'welcome#index', as: 'welcome'


  get '/location', to: 'location#index', as: 'location'


  get '/contact_us', to: 'contact_us#index', as: 'contact_us'


  get 'login', to: 'sessions#new', as: 'login'
  post 'sessions', to: 'sessions#create', as: 'sessions'
  delete 'sessions', to: 'sessions#destroy'

  get '/cupcakes', to: 'cupcakes#index', as: 'cupcakes'
  get '/cupcakes/new', to: 'cupcakes#new', as: 'new_cupcake'
  get '/cupcakes/:id', to: 'cupcakes#show', as: 'cupcake'
  post '/cupcakes', to: 'cupcakes#create'
  get '/cupcakes/:id/edit', to: 'cupcakes#edit', as: 'edit_cupcake'
  patch '/cupcakes/:id', to: 'cupcakes#update'
  delete '/cupcakes/:id', to: 'cupcakes#destroy', as: 'delete_cupcake'


  # resources :users, only[:new, :show, :create]
  get '/users', to: 'users#index', as: 'users'
  get '/users/new', to: 'users#new', as: 'new_user'
  get '/users/:id', to: 'users#show', as: 'user'
  post '/users', to: 'users#create'
  put '/users/:id/edit', to: 'users#edit', as: 'edit_user'
  patch '/users/:id', to: 'users#update'
  delete '/users/:id', to: 'users#destroy', as: 'delete_user'
  get '/users/:id/cupcake_orders', to: 'users#all_cupcake_orders', as: 'user_cupcake_orders'
  

  # get '/orders/', to: 'orders#index', as: 'orders'
  # get '/orders/:id', to: 'orders#show', as: 'order'
  # get '/orders/new', to: 'orders#new', as: 'new_order'
  # put '/orders/:id', to: 'orders#edit', as: 'edit_order'
  # delete 'orders/:id', to: 'orders#destroy', as: 'delete_order'


  get '/cupcake_orders', to: 'cupcake_orders#index', as: 'cupcake_orders'
  get '/cupcake_orders/new', to: 'cupcake_orders#new', as: 'new_cupcake_order'
  get '/cupcake_orders/:id', to: 'cupcake_orders#show', as: 'cupcake_order'
  post '/cupcake_orders', to: 'cupcake_orders#create'
  get '/cupcake_orders/:id/edit', to: 'cupcake_orders#edit', as: 'edit_cupcake_order'
  patch '/cupcake_orders/:id', to: 'cupcake_orders#update'
  delete '/cupcake_orders/:id', to: 'cupcake_orders#delete', as: 'delete_cupcake_order'

 

end
