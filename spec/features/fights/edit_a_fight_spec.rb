require 'rails_helper'

RSpec.describe "edit a fight" do
  context "visits fight page" do
    it "can edit the fight and is redirected to show page" do
      fight = create(:fight)

      visit fight_path(fight)
      click_on "Edit"

      fill_in "fight[date_occurred]", with: "16/9/2015"
      fill_in "fight[description]", with: "Yankees suck"
      click_on "Submit"

      expect(current_path).to eq(fight_path(fight))
      expect(page).to have_content("Yankees suck")
      expect(page).to have_content("September 16, 2015")
    end
  end
end