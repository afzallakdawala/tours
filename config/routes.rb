Tours::Application.routes.draw do
  get "home/index"
  get "admin_tour/index"

  root :to => "home#index"

  resources :admin_tour
end
