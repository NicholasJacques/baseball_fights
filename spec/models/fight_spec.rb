require 'rails_helper'

RSpec.describe "fight model" do
  context "attributes" do
    it "has a date_occurred" do
      fight = create(:fight)

      expect(fight).to respond_to(:date_occurred)
    end

    it "has an embed url" do
      fight = create(:fight)

      expect(fight).to respond_to(:embed_url)
    end

    it "has a description" do
      fight = create(:fight)

      expect(fight).to respond_to(:description)
    end
  end

  context "validations" do
    it "is invalid without an embed_url" do
      fight = build(:fight, embed_url: nil)

      expect(fight).to be_invalid
    end

    it "is invalid without a date_occurred" do
      fight = build(:fight, date_occurred: nil)

      expect(fight).to be_invalid
    end

    it "is invalid without a home team" do
      fight = build(:fight, home_team: nil)

      expect(fight).to be_invalid
    end

    it "is invalid without an away team" do
      fight = build(:fight, away_team: nil)

      expect(fight).to be_invalid
    end

    it "is invalid when home team is the same as away_team" do
      team = create(:team)
      fight = build(:fight, home_team: team, away_team: team)

      expect(fight).to be_invalid
    end
  end

  context "associations" do
    it "has an away team" do
      fight = create(:fight)

      expect(fight).to respond_to(:away_team)
    end

    it "has an away team" do
      fight = create(:fight)

      expect(fight).to respond_to(:home_team)
    end
  end
end
