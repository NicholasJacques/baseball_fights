require 'rails_helper'

RSpec.describe "team model" do
  context "attributes" do
    it "has a name" do
      team = create(:team)

      expect(team).to respond_to(:name)
    end

    it "has a city" do
      team = create(:team)

      expect(team).to respond_to(:city)
    end

    it "has an abbreviation" do
      team = create(:team)

      expect(team).to respond_to(:abbreviation)
    end
  end

  context "validations" do
    it "is invalid without a name" do
      team = Team.new(city: "Boston", abbreviation: "BOS")

      expect(team).to be_invalid
    end

    it "is invalid with a name that already exists" do
      Team.create(name: "Red Sox", city: "New York", abbreviation: "NYS" )
      team = Team.new(name: "Red Sox", city: "Boston", abbreviation: "NRL" )

      expect(team).to be_invalid
    end

    it "is invalid without a city" do
      team = Team.new(name: "Red Sox", abbreviation: "BOS")

      expect(team).to be_invalid
    end

    it "is invalid without an abbreviation" do
      team = Team.new(name: "Red Sox", city: "Boston")

      expect(team).to be_invalid
    end

    it "is invalid with an abbreviation that already exists" do
      Team.create(name: "Red Sox", city: "Boston", abbreviation: "BOS")
      team = Team.new(name: "Yankees", city: "New York", abbreviation: "BOS")

      expect(team).to be_invalid
    end
  end

  context "associations" do
    it "has away fights" do
      team = create(:team)

      expect(team).to respond_to(:away_fights)
    end

    it "has home fights" do
      team = create(:team)

      expect(team).to respond_to(:home_fights)
    end

    it "has fights" do
      team = create(:team)

      expect(team).to respond_to(:fights)
    end

    it "fights returns both away fights and home fights" do
      fight_1 = create(:fight)
      fight_2 = Fight.create(date_occurred: "16/9/2013",
                             embed_url: "https://www.youtube.com/watch?v=RAWvfKPMlmI",
                             description: "Another fight")
      team = create(:team)
      
      fight_1.update(away_team: team)
      fight_2.update(home_team: team)

      expect(team.fights).to eq([fight_1, fight_2])
    end
  end
end
