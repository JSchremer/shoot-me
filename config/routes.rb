Rails.application.routes.draw do
  devise_for :users do 
    resources :bookings, only: [ :index, :show, :edit, :update, :destroy ]
  end
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :locations, only: [:index, :show, :new, :create] do
    resources :bookings, only: [ :new, :create ]
  end
end
