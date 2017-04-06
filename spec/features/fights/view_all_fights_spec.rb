require 'rails_helper'

RSpec.describe "view index path" do
  context "as a user" do
    it "can see all fights" do
      fight_1, fight_2 = create_list(:fight, 2)

      visit fights_path

      expect(page).to have_content(fight_1.description)
      expect(page).to have_content(fight_1.date_occurred.strftime("%B %d, %Y"))
      expect(page).to have_content(fight_2.description)
      expect(page).to have_content(fight_2.date_occurred.strftime("%B %d, %Y"))
    end

    it "can click on a date and see the show page for that fight" do
      fight_1 = create(:fight)
      date = fight_1.date_occurred.strftime("%B %d, %Y")

      visit fights_path
      click_on date

      expect(current_path).to eq(fight_path(fight_1))
    end
  end
end