FactoryGirl.define do
  factory :fight do
      embed_url     "https://www.youtube.com/embed/RAWvfKPMlmI"
      date_occurred "16/9/2014"
      description   "This is a great fight!"
      home_team
      away_team
  end

  factory :team, aliases: [:home_team, :away_team] do
    name
    city "Boston"
    abbreviation
  end

  sequence :name do |n|
    "#{n} Name"
  end

  sequence :abbreviation do |n|
    "#{n} abbrev"
  end

  factory :default_user, class: User do
    username "Nick"
    password "password"
    email "test@test.com"
    role 0
  end

  factory :admin, class: User do
    username "admin"
    password "password"
    email "admin@admin.com"
    role 1
  end
end