require 'rails_helper'

RSpec.describe "Admin visits a fight page" do
  context "as admin" do
    it "allows admin to delete fight" do
      fight = create(:fight)
      admin = create(:admin)

      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(:admin)
      visit admin_fight_path(fight)
      expect(page).to have_content("Delete Fight")
    end
  end
end
