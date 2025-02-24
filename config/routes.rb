Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  get("/", {:controller => "places", :action => "index"})
  get("/places", {:controller => "places", :action => "index"})
  get("/places/new", {:controller => "places", :action => "new"})
  get("/places/:id", {:controller => "places", :action => "show"})
  post("/places/create", {:controller => "places", :action => "create"})
  post("/entries/create/:place_id", {:controller => "entries", :action => "create"})
end
