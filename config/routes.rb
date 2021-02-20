Rails.application.routes.draw do
  root to: 'home#index'

  namespace :api, {format: 'json'} do
    namespace :v1 do
      resources :owners, only: :index
      resources :services, only: [:index, :show, :create, :update, :destroy]
      resources :works, only: [:index, :show, :create, :update, :destroy]
      resources :contacts, only: [:show, :create]
    end
  end
end
