Rails.application.routes.draw do
  resources :images
  resources :articles
  resources :user_articles
  resources :users
  resources :blogs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
