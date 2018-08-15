Rails.application.routes.draw do
  mount Lines::Engine => "/blog"
  devise_for :users
  root to: 'pages#home'

  get 'contact', to: 'pages#contact'
  get 'about', to: 'pages#about'
  get 'testimonials', to: 'pages#testimonials'

  resources :packages

  resources :appointments do
    collection do
      get 'first', to: 'appointments#first'
    end
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
