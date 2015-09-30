class AddAbbrColumnToStates < ActiveRecord::Migration
  def change
    add_column :states, :abbr, :string
  end
end
