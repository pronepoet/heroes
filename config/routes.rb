Rails.application.routes.draw do
  resources :hero_powers, only: :create
  resources :heroes, only: [:index, :show]
  resources :powers, only: [:index, :show, :update]


end
