class SelectionsController < ApplicationController

def index
  @selections = Selection.all
end

def new

end

def create
  # binding.pry
  # Selection.create(selection_attributes)
  selection_attributes = params
  user_id = selection_attributes["user_id"]
  blank = Selection.new
  blank.name = selection_attributes["name"]
  blank.band = selection_attributes["band"]
  blank.spotify_id = selection_attributes["spotify_id"]
  blank.playlist_id = selection_attributes["playlist_id"]
  blank.save!
  redirect_to "/users/#{user_id}"
  # Selection.create({
  #   name: selection_attributes[:name],
  #   band: selection_attributes[:band],
  #   sotify_id: selection_attributes[:spotify_id],
  #   playlist_id: selection_attributes[:splaylist_id]
  #   })
end

def delete
  selection_attributes = params
  user_id = selection_attributes["user_id"]
  id = selection_attributes["id"]
  Selection.find(id).destroy
  redirect_to "/users/#{user_id}"
end

private

# def selection_attributes
#   params.require(:selection).permit(:name, :band, :spotify_id, :playlist_id)
# end


end
