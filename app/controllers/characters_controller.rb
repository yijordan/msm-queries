class CharactersController < ApplicationController
  def index
    render({ :template => "character_templates/list"})
  end
end
