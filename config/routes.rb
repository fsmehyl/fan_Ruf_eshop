Rails.application.routes.draw do

  devise_for :admin, controllers: {
    sessions: 'admin/sessions',
    registrations: 'admin/registrations'
  }


  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  

  root "pages#home"

  get "/home", to: "pages#home"

  get "/contact", to: "pages#contact"

  get "/simulation", to: "simulation#simulation"

  resources :products do
    post 'reserve', on: :member
  end


  resources :reviews
  resources :products



  get "up" => "rails/health#show", as: :rails_health_check

 
end