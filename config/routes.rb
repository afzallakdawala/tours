Tours::Application.routes.draw do  

  get "users/login"
  post "users/login"
  get "users/thank_you"
  get "users/verification"
  match "users/:id/approve" => 'users#approve', :via => :get, :as => :user_approve

  get "tours/logout"
  get "tours/search"    
  post "tours/search"    
  get "tours/admin"
  match "tours/:id/approve" => 'tours#approve', :via => :get, :as => :tour_approve

  get "home/email"

  root :to => "home#index"

  resources :home, :users, :tours
  
end
