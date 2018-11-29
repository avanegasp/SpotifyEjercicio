class ArtistsController < ApplicationController

  def index
    @artists = Artist.all
  end

  def show
    puts "////////////////////////"
    puts @artist = Artist.find(params[:id])
    puts "////////////////////////"

  end

end
