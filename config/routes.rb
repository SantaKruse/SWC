Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "home#index"

  resources :wines, only: [:index, :new, :create, :show, :edit, :update, :destroy]
  get 'user_wines', to: 'wines#user_index'
  
end
