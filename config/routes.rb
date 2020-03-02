Rottenpotatoes::Application.routes.draw do
  resources :movies
  # map '/' to be a redirect to '/movies'
  root :to => redirect('/user_profiles')
  resources :user_profiles
  resources :order_generation
  resources :track_request
  resources :update_request_status
  get 'order_generation/confirm'
end
