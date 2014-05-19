class CreateSelections < ActiveRecord::Migration
  def change
    create_table :selections do |t|
      t.integer :song_id
      t.integer :user_id
    end
  end
end
