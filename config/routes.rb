Rails.application.routes.draw do
  devise_for :users
  root 'main#index'

  get 'main/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'users', to: 'users#index', as: 'users'
  get 'users/new', to: 'users#new', as: 'new_user'
  get 'users/:id', to: 'users#show', as: 'user'
  get 'users/:id/edit', to: 'users#edit', as: 'edit_user'
  patch 'users/:id/update', to: 'users#update', as: 'update_users'
end
