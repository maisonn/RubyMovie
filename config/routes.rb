Rails.application.routes.draw do
  get 'home/index'
  devise_for :users
  resources :categories
  resources :movies do
    collection do
      get 'search'
    end
    resources :reviews, except: [:show, :index]
  end
  root to: "home#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
