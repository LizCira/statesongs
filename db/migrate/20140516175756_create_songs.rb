class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :track
      t.string :band
      t.string :spotify
      t.integer :state_id
    end
  end
end
