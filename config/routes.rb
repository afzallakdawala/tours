Tours::Application.routes.draw do
  

  get "admin_tour/index"

  get "users/login"
  post "users/login"

  get "tours/logout"

  get "users/thank_you"

    
  get "home/search_tours"    
  post "home/search_tours"  

  root :to => "home#index"

  resources :home, :users, :tours
  
end
