Rottenpotatoes::Application.routes.draw do
  get 'sessions/new'

  get 'static_pages/home'

  get 'static_pages/help'
  get 'signup' => 'user_profiles#new'
  get 'users/new'
  get 'movies/test'
  resources :movies
  # map '/' to be a redirect to '/movies'
  #root :to => redirect('/user_profiles')
  root :to => redirect('static_pages/home')
  resources :users
  resources :user_profiles
  resources :requests
  resources :task_applications
  resources :order_generations
  #resources :track_request
  resources :update_request_statuses
  get 'order_generation/confirm'

  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
end
