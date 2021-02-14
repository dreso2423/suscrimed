Rails.application.routes.draw do
  get 'invoice_details/index'
  get 'invoice_details/edit'
  get 'invoice_details/create'
  get 'invoice_details/show'
  get 'invoice_details/update'
  get 'invoice_details/delete'
  get 'invoices/index'
  get 'invoices/show'
  get 'invoices/edit'
  get 'invoices/update'
  get 'invoices/delete'
  get 'invoices/create'
  get 'invoices/new'
  resources :invoices do
    resources :invoice_details
  end
  resources :drugs
  post 'drugs/add_to_invoice'

  # si es por post se cambia la linea

  devise_for :users,
      controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: 'pages#home'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
