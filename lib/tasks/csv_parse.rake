require 'csv'


csv_text = File.read('vendor/crime_stats.csv')
csv = CSV.parse(csv_text, :headers => true)
csv.each do |row|
  state = State.find_by(name: row.first)
  year = Year.find_by(year: row[1])
  row.each do |item, index|
    if index >= 2
      AnnualStateCrimeRate.create!(rate: item, state_id: state.id, year_id: year.id, crime_id: Crime.find_by(name: header))
    end
  end
end
