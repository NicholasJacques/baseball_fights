require 'rails_helper'

RSpec.describe "Logout" do
  describe "user logs out when logged in" do
    it "can log out when logged in" do
      user = create(:default_user)

      visit login_path
      fill_in "session[username]", with: user.username
      fill_in "session[password]", with: "password"
      click_on "Log In"

      expect(page).to have_content("Welcome, Nick")

      click_on "Logout"

      expect(page).to_not have_content("Welcome, Nick")
    end
  end
end