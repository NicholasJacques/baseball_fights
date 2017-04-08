require 'rails_helper'

RSpec.describe 'team view' do
  context "create a team" do
    it "can see fights for that team" do
      team_1, team_2 = create_list(:team, 2)
      fight = create(:fight)
      date = fight.date_occurred.strftime("%B %d, %Y")
      description = fight.description
      fight.update(away_team: team_1)
      fight.update(home_team: team_2)

      visit team_path(team_1)
  
      expect(page).to have_content(team_2.abbreviation)
      expect(page).to have_content(date)
      expect(page).to have_content(description)
    end
  end
end