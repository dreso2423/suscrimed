Rails.application.routes.draw do

  resources :drugs, only: :index

  devise_for :users
  root to: 'pages#home'

  resources :invoices do
    resources :invoice_details
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
