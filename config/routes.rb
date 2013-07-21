Tours::Application.routes.draw do
  

  get "admin_tour/index"

  get "user/login"
  post "user/login"
    
  get "home/search_tours"    
  post "home/search_tours"  

  root :to => "home#index"

  resources :admin_tour, :home, :user
  
end
