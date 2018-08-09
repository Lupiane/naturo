Rails.application.routes.draw do
  mount Lines::Engine => "/blog"
  devise_for :users
  root to: 'pages#home'

  resources :packages, only: [:show]

  resources :posts, only: [:index, :show]

  resources :appointments, only: [:create]

  get 'contact', to: 'pages#contact'
  get 'about', to: 'pages#about'
  get 'testimonials', to: 'pages#testimonials'

  # => NEED TO ADD ADMIN ROUTES

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
