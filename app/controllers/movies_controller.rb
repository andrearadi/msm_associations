class MoviesController < ApplicationController
  def index
    @movies = Movie.all

    render("movies/index.html.erb")
  end


#SHOW
  def show
    @movie = Movie.find(params[:id])

    render("movies/show.html.erb")
  end

#NEW
  def new
    @movie = Movie.new

    render("movies/new.html.erb")
  end

#CREATE
  def create
    @movie = Movie.new

    @movie.title = params[:title]
    @movie.director_id = params[:director_id]
    @movie.year = params[:year]
    @movie.duration = params[:duration]
    @movie.description = params[:description]
    @movie.image_url = params[:image_url]


  end

#EDIIT
  def edit
    @movie = Movie.find(params[:id])

    render("movies/edit.html.erb")
  end

#UPDATE
  def update
    @movie = Movie.find(params[:id])

    @movie.title = params[:title]
    @movie.director_id = params[:director_id]
    @movie.year = params[:year]
    @movie.duration = params[:duration]
    @movie.description = params[:description]
    @movie.image_url = params[:image_url]


    render("movies/edit.html.erb")
   
  end

#DESTROY
  def destroy
    @movie = Movie.find(params[:id])

    @movie.destroy

  end
end