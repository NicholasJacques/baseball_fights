require 'rails_helper'

RSpec.describe "as a user" do
  context "valid form input" do
    it "creates a fight" do
      visit new_fight_path
      save_and_open_page
      fill_in "fight[embed_url]", with: "https://www.youtube.com/embed/RAWvfKPMlmI"
      fill_in "fight[date_occurred]", with: "16/9/2014"
      fill_in "fight[description]", with: "Benches clear after Yankees retaliate for hbp"
      click_on "Submit"

      expect(Fight.count).to eq(1)
      expect(current_path).to eq(fight_path(Fight.last))
      expect(page).to have_content("Benches clear after Yankees retaliate for hbp")
      expect(page).to have_content("September 16, 2014")
    end
  end
end
