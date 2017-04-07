require 'csv'

DatabaseCleaner.strategy = :truncation
DatabaseCleaner.clean

teams ||= (CSV.open'db/csv/teams.csv', headers: true, header_converters: :symbol)

teams.each do |team|
  Team.create!(name:        team[:name],
              city:         team[:city_state],
              abbreviation: team[:abbreviation])
  puts "Created #{team[:name]}"
end

fights ||= (CSV.open'db/csv/fights.csv', headers: true, header_converters: :symbol)

fights.each do |fight|
  Fight.create!(date_occurred: fight[:date_occurred],
                embed_url:     fight[:embed_url],
                description:   fight[:description],
                home_team:     Team.find_by(name: fight[:home_team]),
                away_team:     Team.find_by(name: fight[:away_team]))
  puts "Created fight: #{fight[:date_occurred]}"
end