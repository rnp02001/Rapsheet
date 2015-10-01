require 'csv'

desc "Imports a CSV file into an ActiveRecord table"
task :import, [:filename] => :environment do
  csv_text = File.read('vendor/crime_stats.csv')
  csv = CSV.parse(csv_text, :headers => true)

  csv.each do |row|
    csv_hash = row.to_hash
    state = State.find_by(name: csv_hash["state"])
    year = Year.find_by(year: csv_hash["year"])
    csv_hash.each do |key, value|
      if (key != "state") && (key != "year")
        AnnualStateCrimeRate.create!(rate: ((value.to_f * 10).to_i), state_id: state.id, year_id: year.id, crime_id: Crime.find_by(name: key).id)
      end
    end
  end
end
