Rails.application.routes.draw do
  root 'home#index'

  devise_for :users

  resources :annual_state_crime_rates

  resources :years

  resources :crimes
    get '/crimes/rates/:id', to: 'crimes#rate'  

  resources :states

end
