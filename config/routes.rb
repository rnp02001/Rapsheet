Rails.application.routes.draw do
  #root 'home#index'
  root to: 'comments#index'

  devise_for :users

  resources :annual_state_crime_rates
    get '/annual_state_crime_rates/rate_range/:id', to: 'annual_state_crime_rates#rate_range'
  resources :years

  resources :crimes

  resources :states

  resources :comments, only: [:index, :new, :create]

end
