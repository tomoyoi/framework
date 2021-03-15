Rails.application.routes.draw do
  root 'home#index'
  get '/about',   to: 'home#index'
  get '/contact', to: 'home#index'
  get '/service', to: 'home#index'

  namespace :api, {format: 'json'} do
    namespace :v1 do
      resources :owners, only: :index
      resources :services, only: :index
      resources :works, only: [:index, :show, :create, :update, :destroy]
      resources :contacts, only: [:show, :create]
    end
  end
end
