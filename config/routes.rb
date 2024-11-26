Rails.application.routes.draw do
  resources :friends, only: [:index, :create, :destroy]
  resources :user_stocks, only: [:create, :destroy]

  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }
  
  root 'welcome#index'

  get "my_portfolio", to: "users#my_portfolio"
  get "my_friends", to: "users#my_friends"
  get "stocks_portfolio", to: "stocks#search_stocks_from_portfolio"
  post "stock_search", to: "stocks#search_stock"
  get "search_friends", to: "friends#search_friends"
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
