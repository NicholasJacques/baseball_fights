require 'rails_helper'

RSpec.describe "teams inded" do
  context "as a user" do
    it "can view teams inded" do
      team_1, team_2 = create_list(:team, 2)

      visit teams_path

      expect(page).to have_content(team_1.name)
      expect(page).to have_content(team_2.name)
    end
  end
end