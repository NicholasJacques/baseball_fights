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
      fight = Fight.new(date_occurred: "16/9/2017", description: "This was a fight")

      expect(fight).to be_invalid
    end

    it "is invalid without a date_occurred" do
      fight = Fight.new(embed_url: "https://www.youtube.com/embed/Pv2N0kK6zbw")

      expect(fight).to be_invalid
    end
  end
end
