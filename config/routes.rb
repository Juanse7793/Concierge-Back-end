Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs', :as => 'swagger'
  root :to => 'home#index'

  namespace :api do
    namespace :v1 do
      resources :users do 
        resources :reservations
      end
    end
  end

  namespace :api do
    namespace :v1 do
      resources :events
    end
  end
end
