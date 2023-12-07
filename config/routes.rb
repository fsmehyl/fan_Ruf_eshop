Rails.application.routes.draw do
  

  root "pages#home"

  get "/home", to: "pages#home"

  get "/contact", to: "pages#contact"

  get "/simulation", to: "simulation#simulation"

  get "/admin", to: "pages#admin"

  resources :products do
    post 'reserve', on: :member
  end


  resources :reviews
  resources :products



  get "up" => "rails/health#show", as: :rails_health_check

 
end