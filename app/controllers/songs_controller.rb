class SongsController < ApplicationController

  def show
    @song = Song.find(params[:id])
  end

  def create
    @song = Song.new(song_params)
    if @song.save
       redirect to song_path(@song)
    else
      render :new
    end
  end

  def edit
    @song = Song.find(params[:id])
  end

  private

  def song_params
    params.permit(:title, :released, :artist_name, :genre, :release_year)
  end


end
