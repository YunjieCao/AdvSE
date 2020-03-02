Rottenpotatoes::Application.routes.draw do
  get 'static_pages/home'

  get 'static_pages/help'

  get 'movies/test'
  resources :movies
  # map '/' to be a redirect to '/movies'
  #root :to => redirect('/user_profiles')
  root 'user_profiles#index'
  resources :users
  resources :user_profiles
  post 'users/register'
end
