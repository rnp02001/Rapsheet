class AddReferencesToAnnualStateCrimeRates < ActiveRecord::Migration
  def change
    add_reference :annual_state_crime_rates, :state, index: true
    add_reference :annual_state_crime_rates, :year, index: true
    add_reference :annual_state_crime_rates, :crime, index: true
  end
end
