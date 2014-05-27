class RemoveColumnInstagramFromStates < ActiveRecord::Migration
  def change
    remove_column :states, :instagram, :string
  end
end
