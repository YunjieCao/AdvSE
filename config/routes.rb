Rottenpotatoes::Application.routes.draw do
  get 'movies/test'
  resources :movies
  # map '/' to be a redirect to '/movies'
  root :to => redirect('/user_profiles')
  resources :user_profiles
  resources :order_generation
  post 'users/register'
end
