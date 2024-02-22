Rails.application.routes.draw do
  resources :capitulos
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  post "/personas", to: "personas#create", as: :create_persona
  delete "/personas/:id", to: "personas#destroy", as: :delete_persona
  patch "/personas/:id", to: "personas#update", as: :update_persona
  get "/personas", to: "personas#index", as: :personas
  get "/personas/:id/edit", to: "personas#edit", as: :edit_persona
  get "/personas/new", to: "personas#new", as: :new_persona

end
