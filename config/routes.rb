Tours::Application.routes.draw do  

  get "users/login"
  post "users/login"
  get "users/thank_you"

  get "tours/logout"
  get "tours/search"    
  post "tours/search"    

  get "tours/admin_tours"

  root :to => "home#index"

  resources :home, :users, :tours
  
end
