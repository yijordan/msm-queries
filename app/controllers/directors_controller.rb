class DirectorsController < ApplicationController
  def index
    render({ :template => "director_templates/list"})
  end
  def youngest
    render({ :template => "director_templates/youngest"})
  end
  def eldest
    render({ :template => "director_templates/eldest"})
  end
  def show
    @the_id = params.fetch("the_id")
    @the_director = Director.where({ :id => @the_id }).at(0)
    @directors_movies = Movie.where({ :director_id => @the_id})
    render({ :template => "director_templates/details"})
  end
end
