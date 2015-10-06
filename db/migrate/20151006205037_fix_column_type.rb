class FixColumnType < ActiveRecord::Migration
  def change
    change_column :users, :state_id, 'integer USING CAST(state_id AS integer)'
  end
end
