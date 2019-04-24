class SongsController < ApplicationController

  def index
    @song = Song.all
  end

  def new
    @song = Song.new
  end

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

  def destroy

  end

  def update
    if @song.update
      @song
  end



  private

  def song_params
    params.require(:song).permit(:title, :released, :artist_name, :genre, :release_year)
  end


end
