Rails.application.routes.draw do

  resources :annual_state_crime_rates

  resources :years

  resources :crimes

  resources :states

  root 'welcome#index'

end
