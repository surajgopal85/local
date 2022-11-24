Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :experiences, only: %i[index show new create]

  get 'trips/:trip_id/my_experiences', to: 'experiences#my_experiences', as: :my_experiences
  get 'trips/:trip_id/my_experiences/:id', to: 'experiences#my_experience', as: :my_experience

  get '/local_experiences', to: 'experiences#local_experiences', as: :local_experiences

  resources :trips
  post 'trips/:trip_id/my_experiences/:id', to: 'trip_experiences#create'

  get '/survey', to: 'profiles#survey', as: :survey
  post '/profile', to: 'profiles#create'
  get '/profile', to: 'profiles#show'
  get '/profile/edit', to: 'profiles#edit'
  patch '/profile', to: 'profiles#update'
  delete '/profile', to: 'profiles#destroy'

  # preferences routes
  resources :preferences, only: %i[create]
end
