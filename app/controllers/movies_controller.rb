class MoviesController < ApplicationController
    def index
        @movies = Movie.all
    end
    
    def show
        # id = params[:id] #retrieve movie ID from URI route
        # @movie = Movie.find(id) #look up movie by unique ID
        # #will render app/views/movies/show.html.haml by default
        # byebug
        @movie = Movie.where(:id => params[:id]).first
        # logger.debug(:id)
        # logger.debug(params[:id])
        # logger.debug(@movie)
        # raise params.inspect
        
    end
    
    def new
        @movie = Movie.new
        #default: render 'new' template
        
    end
    
    # add below all other methods
    private
    
      def movie_params
        params.require(:movie).permit(:title, :rating, :description, :release_date)
      end
end