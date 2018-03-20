Rails.application.routes.draw do
  devise_for :trainers
  root to: "home#index"
  get 'new', to: 'pokemons#new'
  post 'create', to: 'pokemons#create', as: "pokemons"
  patch 'capture', to: 'pokemons#capture', as: 'capture'
  patch 'damage', to: 'pokemons#damage', as: 'damage'
  resources :trainers
end
