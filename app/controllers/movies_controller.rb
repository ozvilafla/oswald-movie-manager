class MoviesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_movie

  def landing
  end

  # GET /movies
  # GET /movies.json
  def index
    @movies = current_user.movies
  end

  # GET /movies/1
  # GET /movies/1.json
  def show
  end

  # GET /movies/new
  def new
  end

  # GET /movies/1/edit
  def edit
  end

  # POST /movies
  # POST /movies.json
  def create
    @movie = current_user.movies.new(movie_params)

    respond_to do |format|
      if @movie.save
        format.html { redirect_to @movie, notice: 'Movie was successfully created.' }
        format.json { render :show, status: :created, location: @movie }
        format.js
      else
        format.js
      end
    end
  end

  # PATCH/PUT /movies/1
  # PATCH/PUT /movies/1.json
  def update
    respond_to do |format|
      if @movie.update(movie_params)
        format.html { redirect_to @movie, notice: 'Movie was successfully updated.' }
        format.json { render :show, status: :ok, location: @movie }
        format.js
      else
        format.js
      end
    end
  end

  # DELETE /movies/1
  # DELETE /movies/1.json
  def destroy
    @status = true

    begin
      @movie.destroy
    rescue => exception
      logger.info("Unable to process request. #{exception.to_s}")
      @status = false
    end

    respond_to do |format|
      format.html { redirect_to movies_path, notice: 'Movie was successfully destroyed.' }
      format.json { head :no_content }
      format.js
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movie
      @movie = Movie.find_or_initialize_by(id: params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def movie_params
      params.require(:movie).permit(:title, :m_format, :length_hours, :length_minutes, :release_year, :rating)
    end
end
