Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  # Defines the root path route ("/")
  # root "articles#index"
  
  # Define the api namespace and the default format as json,
  # as app will primarily respond to requests with json responses
  namespace :api, defaults: { format: :json } do
    # TODO: Change to patient (and use resources rails syntax)
    post '/login',    to: 'sessions#create'
    post '/logout',   to: 'sessions#destroy'
    get '/logged_in', to: 'sessions#is_logged_in?'
    
    resources :patients
    resources :appointments
  end
end
