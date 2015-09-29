class EditRateColumnInAnnualStateCrimeRate < ActiveRecord::Migration
  def change
    change_column :annual_state_crime_rates, :rate, :decimal, precision: 6, scale: 1
  end
end
