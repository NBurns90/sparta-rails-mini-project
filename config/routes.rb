Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    get '/users/sign_out', to: 'devise/sessions#destroy', as: :signout
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :check_ins

  get '/users', to: 'records#index'
  get '/records/show/:id', to: 'records#show'

  root 'static#landing'
end
