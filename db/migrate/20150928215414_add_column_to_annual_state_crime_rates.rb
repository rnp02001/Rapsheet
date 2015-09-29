class AddColumnToAnnualStateCrimeRates < ActiveRecord::Migration
  def change
    add_column :annual_state_crime_rates, :rate, :decimal
  end
end
