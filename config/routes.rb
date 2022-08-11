Rails.application.routes.draw do
  
  namespace :Api do
    namespace :V1 do
      resources :users do 
        resources :reservations
      end
    end
  end

  # namespace :Api do
  #   namespace :V1 do
  #     resources :events do 
  #       resources :reservations
  #     end
  #   end
  # end
end
