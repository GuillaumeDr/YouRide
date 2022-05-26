Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    get "/skis/search", to: "skis#search"
  resources :skis do
    resources :bookings, only: [ :new, :create, :update ]
    resources :reviews, only: [ :new, :create ]
  end

  get "/myskis", to: "profiles#myskis"


end
