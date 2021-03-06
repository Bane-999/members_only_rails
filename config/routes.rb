Rails.application.routes.draw do  
  devise_for :users, :controllers => {registrations: "registrations"}
  resources :posts, only: [:new, :create, :index]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  
  
  devise_scope :user do
    get "/users/sign_out" => "devise/sessions#destroy"
  end

  root "posts#index"
end
