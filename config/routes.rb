Rails.application.routes.draw do
  resources :secret_codes
  resource :users
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  post  'requests' => 'users#code_request', as: :request_create_create
  root to: 'home#index'

end
