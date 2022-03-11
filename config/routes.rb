Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  # Defines the root path route ("/")
  # root "articles#index"

  # Define the api namespace and the default format as json,
  # as app will primarily respond to requests with json responses
  namespace :api, defaults: { format: :json } do
    
    get 'profile' => 'profile#edit'
    put 'profile' => 'profile#update'

  end
end
