class CreateAnnualStateCrimeRates < ActiveRecord::Migration
  def change
    create_table :annual_state_crime_rates do |t|

      t.timestamps null: false
    end
  end
end
