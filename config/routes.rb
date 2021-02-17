Rails.application.routes.draw do
  root to: 'pages#home'

  resources :invoices do
    resources :invoice_details
  end
  resources :drugs
  post 'drugs/add_to_invoice'

  # si es por post se cambia la linea
  delete "session/invoice_detail/drugs/:id", to: "invoice_details#delete"

  devise_for :users,
      controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
