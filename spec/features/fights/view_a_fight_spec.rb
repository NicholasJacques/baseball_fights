require 'rails_helper'

RSpec.describe 'view fight path' do
  context "view a fight as a guest" do
    it "can see fight stuff" do
      fight = create(:fight)
      date_occurred = fight.date_occurred.strftime("%B %d, %Y")

      visit fight_path(fight)

      expect(page).to have_css("iframe")
      expect(page).to have_content(date_occurred)
      expect(page).to have_content(fight.description)
    end
  end
end
