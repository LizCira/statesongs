class CreatePlaylists < ActiveRecord::Migration
  def change
    create_table :playlists do |t|
      t.string :title
      t.text :user_notes
      t.integer :selection_id
      t.integer :user_id
    end
  end
end
