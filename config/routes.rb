Rails.application.routes.draw do
  root 'home#index'

  devise_for :users

  resources :annual_state_crime_rates

  resources :years

  resources :crimes

  resources :states

end
