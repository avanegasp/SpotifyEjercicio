class ArtistsController < ApplicationController

  def index
    @artists = Artist.all
  end

def create
  Artist.create(artist_params)
  Album.create(album_params)
  redirect_to 'artists'
end

  def show
    @artist = Artist.find(params[:id])
  end

  def destroy
    @artist = Artist.find(params[:id])
    @artist.destroy
    redirect_to artists_path
  end

  private
  def artist_params
    params.require(:artist).permit(:name, :image_url)
  end
  def album_params
    params.require(:album).permit(:name, :image_url, :released_at, :artist_id)
  end
end
