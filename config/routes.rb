Rails.application.routes.draw do
  
  resources :users do 
    resources :reservations
  end

  resources :events do 
    resources :reservations
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
