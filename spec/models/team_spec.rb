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
      create(:team)
      team = Team.new(name: "Red Sox", city: "New York", abbreviation: "NYS" )

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
      create(:team)
      team = Team.new(name: "Yankees", city: "New York", abbreviation: "BOS")

      expect(team).to be_invalid
    end
  end

  context "associations" do
    it "has fights" do
     team = create(:team)

     expect(team).to respond_to(:fights)
    end
  end
end
