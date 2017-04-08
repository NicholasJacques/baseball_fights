require 'rails_helper'

RSpec.describe "as a user" do
  context "valid form input" do
    it "creates a fight" do
      team_1, team_2 = create_list(:team, 2)
      name_1 = team_1.name
      name_2 = team_2.name

      visit new_fight_path

      fill_in "fight[embed_url]", with: "https://www.youtube.com/embed/RAWvfKPMlmI"
      fill_in "fight[date_occurred]", with: "16/9/2014"
      fill_in "fight[description]", with: "Benches clear after Yankees retaliate for hbp"
      select name_1, :from => "fight[home_team_id]"
      select name_2, :from => "fight[away_team_id]"
      click_on "Submit"

      expect(Fight.count).to eq(1)
      expect(current_path).to eq(fight_path(Fight.last))
      expect(page).to have_content("Benches clear after Yankees retaliate for hbp")
      expect(page).to have_content("September 16, 2014")
      expect(page).to have_content(name_1)
      expect(page).to have_content(name_2)
    end
  end
end
