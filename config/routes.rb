Rottenpotatoes::Application.routes.draw do
  get 'movies/test'
  resources :movies
  # map '/' to be a redirect to '/movies'
  root :to => redirect('/movies')
  resources :users
  post 'users/register'
end
