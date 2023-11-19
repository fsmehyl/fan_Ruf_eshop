Rails.application.routes.draw do
  

  root "pages#home"

  get "/home", to: "pages#home"

  get "/contact", to: "pages#contact"

  get "/simulator", to: "pages#simulator"

  get "/product", to: "pages#product"

  

  
   



  resources :reviews
  resources :products
  

 




  get "up" => "rails/health#show", as: :rails_health_check



 
end
