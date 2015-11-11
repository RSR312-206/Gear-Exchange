Rails.application.routes.draw do
  root to: 'statics#index'
  resources :items, only: [:index, :show, :create, :update, :destroy]
end
