# require 'rails_helper'

# RSpec.describe 'team view' do
#   context "create a team" do
#     it "can see fights for that team" do
#       team = create(:team)
#       fight_1, fight_2 = create_list(:fight, 2)
#       date_1 = fight_1.date_occurred
#       date_2 = fight_2.date_occurred
#       desc_1 = fight_1.description
#       desc_2 = fight_2.description
#       team.fights << [fight_1, fight_2]

#       visit team_path(team)

#       expect(page).to have_content(team.name)
#       expect(page).to have_content(date_1)
#       expect(page).to have_content(date_2)
#       expect(page).to have_content(desc_1)
#       expect(page).to have_content(desc_2)
#     end
#   end
# end