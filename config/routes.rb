Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "time", to: "others#time"
  get "log", to: "others#log"
  get "test_digest_auth", to: "others#test_digest_auth"
  get "users/:id", to: "users#show"
end
