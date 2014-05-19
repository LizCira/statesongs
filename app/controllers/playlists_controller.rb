class PlaylistsController < ApplicationController
has_many :selections


def current_edit_playlist(choice)
    @playlist_editing = self.playlist_id
end


def create
    @playlist = Playlist.create(playlist_attributes)
    # redirect_to "/users/#{@playlist.user_id}"
    @display = @playlist.title
    redirect_to "/users/#{@playlist.user_id}"
end


private
  def playlist_attributes
    params.require(:playlist).permit(:title, :user_notes, :selection_id, :user_id, :id)
  end


end
