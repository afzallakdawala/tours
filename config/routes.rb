Tours::Application.routes.draw do
  
  get "admin_tour/index"

  get "home/login"
  post "home/login"
  
  get "home/sign_up"    
  post "home/sign_up"  
  
  get "home/search_tours"    
  post "home/search_tours"  

  root :to => "home#index"

  resources :admin_tour, :home
end
