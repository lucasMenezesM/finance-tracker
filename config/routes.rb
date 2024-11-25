Rails.application.routes.draw do
  resources :user_stocks, only: [:create, :destroy]
  devise_for :users
  
  root 'welcome#index'

  get "my_portfolio", to: "users#my_portfolio"
  get "stocks_portfolio", to: "stocks#search_stocks_from_portfolio"
  post "stock_search", to: "stocks#search_stock"
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
