Rails.application.routes.draw do
  resources :books

  # Routes for the Movie resource:
  get("/movies/new", { :controller => "movies", :action => "new" })

  # READ
  get("/movies", { :controller => "movies", :action => "index" })

  # CREATE
  post("/movies", { :controller => "movies", :action => "create" })

  get "/movies/:id/edit", controller: "movies", action: "edit"
  
  # UPDATE
  
  patch("/movies/:id", { :controller => "movies", :action => "update" })
  
  # DELETE
  delete("/movies/:id", { :controller => "movies", :action => "destroy" })

  #------------------------------

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
