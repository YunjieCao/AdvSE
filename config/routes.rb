Rottenpotatoes::Application.routes.draw do
  get 'movies/test'
  resources :movies
  # map '/' to be a redirect to '/movies'
  root :to => redirect('/user_profiles')
  resources :users
  resources :user_profiles
  post 'users/register'
end
