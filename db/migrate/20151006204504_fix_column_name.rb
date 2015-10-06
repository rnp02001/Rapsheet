class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :users, :location, :state_id
  end
end
