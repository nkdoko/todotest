Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :test, only: [:index]

      mount_devise_token_auth_for 'User', at: 'auth', controllers: {
        registrations: 'api/v1/authregistrations'
      }

      namespace :auth do
        resource :sessions, only: [:index]
      end
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
