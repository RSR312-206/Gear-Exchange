Rails.application.routes.draw do
  root to: 'statics#index'

  resources :items, only: [:index, :show, :create, :update, :destroy] do
    member do
      get 'in_range'
    end
  end
  resources :sierra_trading, only: [:index]
end


