Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/', to: 'customers#show'
  get '/customers/alphabetized', to: 'customers#show_alphabetized', as: 'alphabetized_customers'
  get '/customers/missing_email', to: 'customers#show_missing_email', as: 'missing_email_customers'
end
