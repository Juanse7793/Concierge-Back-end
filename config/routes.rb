Rails.application.routes.draw do
  
  namespace :api do
    namespace :v1 do
      resources :users do 
        resources :reservations
      end
    end
  end

  namespace :api do
    namespace :v1 do
      resources :events do 
        resources :reservations
      end
    end
  end
end
