class DirectorsController < ApplicationController
  def index
    render({ :template => "director_templates/list"})
  end
  def youngest
    @youngest_dob = Director.maximum(:dob)
    @youngest_dob_strftime = @youngest_dob.strftime("%B %e, %Y")
    @youngest_director = Director.where({ :dob => @youngest_dob}).at(0)
    render({ :template => "director_templates/youngest"})
  end
  def eldest
    @eldest_dob = Director.minimum(:dob)
    @eldest_dob_strftime = @eldest_dob.strftime("%B %e, %Y")
    @eldest_director = Director.where({ :dob => @eldest_dob}).at(0)
    render({ :template => "director_templates/eldest"})
  end
  def show
    @the_id = params.fetch("the_id")
    @the_director = Director.where({ :id => @the_id }).at(0)
    @directors_movies = Movie.where({ :director_id => @the_id})
    render({ :template => "director_templates/details"})
  end
end
