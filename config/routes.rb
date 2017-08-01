Rails.application.routes.draw do
  # Routes for the Movie resource:
  # CREATE
  get "/movies/new", :controller => "movies", :action => "new"
  post "/create_movie", :controller => "movies", :action => "create"

  # READ
  get "/movies", :controller => "movies", :action => "index"
  get "/movies/:id", :controller => "movies", :action => "show"

  # UPDATE
  get "/movies/:id/edit", :controller => "movies", :action => "edit"
  post "/update_movie/:id", :controller => "movies", :action => "update"

  # DELETE
  get "/delete_movie/:id", :controller => "movies", :action => "destroy"
  #------------------------------

  # Routes for the Actor resource:
  # CREATE
  get "/actors/new", :controller => "actors", :action => "new"
  post "/create_actor", :controller => "actors", :action => "create"

  # READ
  get "/actors", :controller => "actors", :action => "index"
  get "/actors/:id", :controller => "actors", :action => "show"

  # UPDATE
  get "/actors/:id/edit", :controller => "actors", :action => "edit"
  post "/update_actor/:id", :controller => "actors", :action => "update"

  # DELETE
  get "/delete_actor/:id", :controller => "actors", :action => "destroy"
  #------------------------------

  # Routes for the Director resource:
  # CREATE
  get "/directors/new", :controller => "directors", :action => "new"
  post "/create_director", :controller => "directors", :action => "create"

  # READ
  get "/directors", :controller => "directors", :action => "index"
  get "/directors/:id", :controller => "directors", :action => "show"

  # UPDATE
  get "/directors/:id/edit", :controller => "directors", :action => "edit"
  post "/update_director/:id", :controller => "directors", :action => "update"

  # DELETE
  get "/delete_director/:id", :controller => "directors", :action => "destroy"
  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

#ACTORS ROUTES
  get "/actors", :controller => "actors", :action => "index"
  get "/actors/:id", :controller => "actors", :action => "show"

  get "/actors/new", :controller => "actors", :action => "new"
  get "/create_actor", :controller => "actors", :action => "create"
  
  get "/actors/:id/edit", :controller => "actors", :action => "edit"
  get "/update_actor/:id", :controller => "actors", :action => "update"
  
  get "/delete_actor/:id", :controller => "actors", :action => "destroy"


#DIRECTORS ROUTES
  get "/directors", :controller => "directors", :action => "index"
  get "/directors/:id", :controller => "directors", :action => "show"
  
  get "/directors/new", :controller => "directors", :action => "new"
  get "/create_director", :controller => "directors", :action => "create"

  get "/directors/:id/edit", :controller => "directors", :action => "edit"
  get "/update_director/:id", :controller => "directors", :action => "update"
  
  get "/delete_director/:id", :controller => "directors", :action => "destroy"
  
#CHARACTER ROUTES
  get "/characters", :controller => "characters", :action => "index"
  get "/characters/:id", :controller => "characters", :action => "show"
  
  get "/characters/new", :controller => "characters", :action => "new"
  get "/create_character", :controller => "characters", :action => "create"
  
  get "/characters/:id/edit", :controller => "characters", :action => "edit"
  get "/update_character/:id", :controller => "characters", :action => "update"
  
  get "/delete_character/:id", :controller => "characters", :action => "destroy"
  
#MOVIES ROUTES
  get "/movies", :controller => "movies", :action => "index"
  get "/movies/:id", :controller => "movies", :action => "show"
  
  get "/movies/new", :controller => "movies", :action => "new"
  get "/create_movie", :controller => "movies", :action => "create"
  
  get "/movies/:id/edit", :controller => "movies", :action => "edit"
  get "/update_movie/:id", :controller => "movies", :action => "update"
  
  get "/delete_movie/:id", :controller => "movies", :action => "destroy"

  
  mount WebGit::Engine, at: "/rails/git"
end
