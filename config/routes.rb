Rails.application.routes.draw do
  get 'customers/index'

  devise_for :users
    root 'dashboard#index'
    resources :customers, only: [:index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
