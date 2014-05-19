class SongsController < ApplicationController

def create
  @song = song.new
  Song.create
end


private
  def song_attributes
    params.require(:song).permit(:song_name, :band, :state_id, )
  end

end
