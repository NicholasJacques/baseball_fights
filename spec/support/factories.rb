FactoryGirl.define do
  factory :fight do
      embed_url     "https://www.youtube.com/embed/RAWvfKPMlmI"
      date_occurred "16/9/2014"
      description   "This is a great fight!"
  end

  factory :team do
    name "Red Sox"
    city "Boston"
    abbreviation "BOS"
  end
end