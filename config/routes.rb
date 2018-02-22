Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    get 'users/dashboard', :to => 'users/sessions#user_dashboard'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :check_ins
end
