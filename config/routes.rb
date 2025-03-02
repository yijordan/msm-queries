Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })

  get("/movies", { :controller => "movies", :action => "index" })

  get("/directors", { :controller => "directors", :action => "index" })
  get("/directors/:the_id", { :controller => "directors", :action => "show" })

  get("/actors", { :controller => "actors", :action => "index" })

  get("/characters", { :controller => "characters", :action => "index"})

end
