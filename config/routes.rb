Rails.application.routes.draw do


  get 'cart', to: 'pages#cart'
  get 'reviews', to: 'pages#reviews'
  get 'blog', to: 'pages#blog'
  root to: 'pages#home'



  resources :invoices do
    resources :invoice_details
    resources :payments, only: :new
  end
  get 'invoices/:id/checkout', to: 'invoices#checkout', as: "checkout"
  resources :drugs
  post 'drugs/add_to_invoice'

  # si es por post se cambia la linea
  delete "session/invoice_detail/drugs/:id", to: "invoice_details#delete"

  devise_for :users,
      controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end


