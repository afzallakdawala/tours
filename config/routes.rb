Tours::Application.routes.draw do  

  get "users/login"
  post "users/login"
  get "users/thank_you"

  get "tours/logout"
  get "tours/search"    
  post "tours/search"    

  get "tours/admin"
  match "tours/:id/approve" => 'tours#approve', :via => :get, :as => :tour_approve

  root :to => "home#index"

  resources :home, :users, :tours
  
end
