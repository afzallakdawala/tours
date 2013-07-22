Tours::Application.routes.draw do
  

  get "admin_tour/index"

  get "users/login"
  post "users/login"
    
  get "home/search_tours"    
  post "home/search_tours"  

  root :to => "home#index"

  resources :home, :users
  
end
