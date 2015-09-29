require 'csv'
desc "Imports a CSV file into an ActiveRecord table"
task :import, [:filename] => :environment do
    CSV.foreach('../vendor/CrimeStatebyState.csv', :headers => true) do |row|
      AnnualStateCrimeRate.create!(row.to_hash)
    end
end
