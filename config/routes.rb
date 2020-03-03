Rottenpotatoes::Application.routes.draw do
  get 'static_pages/home'

  get 'static_pages/help'
  #get 'signup' => 'user_profiles#new'
  get 'signup' => 'users#new'
  get 'users/new'
  get 'movies/test'
  resources :movies
  # map '/' to be a redirect to '/movies'
  #root :to => redirect('/user_profiles')
  root :to => redirect('static_pages/home')
  resources :users
  resources :user_profiles
  resources :order_generation
  resources :track_request
  resources :update_request_status
  get 'order_generation/confirm'
end
