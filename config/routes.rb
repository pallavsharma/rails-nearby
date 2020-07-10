Rails.application.routes.draw do
  # resources :users
  post 'users/bulk_create', to: 'users#bulk_create'
  get 'search/nearby', to: 'users#search'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
