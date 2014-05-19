class CreateSelections < ActiveRecord::Migration
  def change
    create_table :selections do |t|
      t.string :name
      t.string :band
      t.string :spotify_id
      t.string :playlist_id
    end
  end
end
