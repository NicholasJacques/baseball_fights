require 'rails_helper'

RSpec.describe "teams inded" do
  context "as a user" do
    it "can view teams inded" do
      team_1, team_2 = create_list(:team, 2)

      visit teams_path

      expect(page).to have_content(team_1.name)
      expect(page).to have_content(team_2.name)
    end

    it "can click a team name and view show page" do
      team = create(:team)

      visit teams_path
      click_on team.name

      expect(current_path).to eq(team_path(team))
    end
  end
end