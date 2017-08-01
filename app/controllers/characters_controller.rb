class CharactersController < ApplicationController
#INDEX
  def index
    @characters = Character.all

    render("characters/index.html.erb")
  end

#SHOW
  def show
    @character = Character.find(params[:id])

    render("characters/show.html.erb")
  end

#NEW
  def new
    @character = Character.new

    render("characters/new.html.erb")
  end
  
#CREATE
  def create
    @character = Character.new

    @character.movie_id = params[:movie_id]
    @character.actor_id = params[:actor_id]
    @character.name = params[:name]

    @character.save

  
    render("characters/new.html.erb")
  end

#EDIT
  def edit
    @character = Character.find(params[:id])

    render("characters/edit.html.erb")
  end

#UPDATE
  def update
    @character = Character.find(params[:id])

    @character.movie_id = params[:movie_id]
    @character.actor_id = params[:actor_id]
    @character.name = params[:name]

    @character.save


    render("characters/edit.html.erb")
  end

  def destroy
    @character = Character.find(params[:id])
    
    @character.destroy
    
  end
end


   