Rails.application.routes.draw do

  resources :users_profile, controller: :users, only: :show do
    resources :items, only: :create
  end

  devise_for :users

  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
