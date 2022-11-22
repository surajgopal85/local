Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :experiences, only: %i[index show]
  get '/my_experiences', to: 'experiences#my_experiences', as: :my_experiences
  get '/my_experiences/:id', to: 'experiences#my_experience', as: :my_experience

  resources :trips

  # get '/survey', to: 'profiles#survey', as: :survey

  # post '/profile',
end
