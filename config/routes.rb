Rails.application.routes.draw do
  root 'home#index'

  devise_for :users

  resources :annual_state_crime_rates
    get '/annual_state_crime_rates/rate_range/:id', to: 'annual_state_crime_rates#rate_range'
    get '/annual_state_crime_rates/year_rates/:year_id/:crime_id', to: 'annual_state_crime_rates#year_rates'
  resources :years

  resources :crimes

  resources :states

end
