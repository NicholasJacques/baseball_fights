require 'csv'

DatabaseCleaner.strategy = :truncation
DatabaseCleaner.clean

teams = (CSV.open'db/csv/teams.csv', headers: true, header_converters: :symbol)

teams.each do |team|
  Team.create!(name: team[:name],
              city: team[:city_state],
              abbreviation: team[:abbreviation])
  puts "Created #{team[:name]}"
end