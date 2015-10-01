class ChangeRateColumnType < ActiveRecord::Migration
  def change
    change_column :annual_state_crime_rates, :rate, :integer
  end
end
