Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })

  get("/movies", { :controller => "movies", :action => "index" })

  get("/directors", { :controller => "directors", :action => "index" })

  get("/actors", { :controller => "actors", :action => "index" })

  get("/characters", { :controller => "characters", :action => "index"})

end
