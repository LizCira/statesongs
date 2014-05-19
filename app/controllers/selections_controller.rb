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
  blank = Selection.new
  blank.name = selection_attributes["name"]
  blank.band = selection_attributes["band"]
  blank.save!
  redirect_to states_path
  # Selection.create({
  #   name: selection_attributes[:name],
  #   band: selection_attributes[:band],
  #   sotify_id: selection_attributes[:spotify_id],
  #   playlist_id: selection_attributes[:splaylist_id]
  #   })
end

private

# def selection_attributes
#   params.require(:selection).permit(:name, :band, :spotify_id, :playlist_id)
# end


end
