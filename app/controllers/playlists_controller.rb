class PlaylistsController < ApplicationController

# def current_edit_playlist(choice)
#     @playlist_editing = self.playlist_id
# end

# def show_states
#   @states = State.all
# end
def show
  @playlist = Playlist.find(params[:id])
end

def edit
  @playlist = Playlist.find(params[:id])
  @statename = params[:state]
end


def create
    @playlist = Playlist.create(playlist_attributes)
    # redirect_to "/users/#{@playlist.user_id}"
    @display = @playlist.title
    redirect_to "/users/#{@playlist.user_id}"
end


def delete
  Playlist.find(params[:list_id]).destroy
  redirect_to "/users/#{params[:user_id]}"

end

private
  def playlist_attributes
    params.require(:playlist).permit(:title, :user_notes, :selection_id, :user_id, :id, :state_name)
  end


end
