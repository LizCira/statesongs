class AddCapitalToStates < ActiveRecord::Migration
  def change
    add_column :states, :capital, :string
  end
end
