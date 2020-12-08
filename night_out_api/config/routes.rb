Rails.application.routes.draw do
  # namespace :api do
  #   namespace :v1 do
  #     resources :comments
  #   end
  # end
  namespace :api do
    namespace :v1 do
      resources :locations
    end
  end
  namespace :api do
    namespace :v1 do
      resources :restaurants do
        resources :comments
      end
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
