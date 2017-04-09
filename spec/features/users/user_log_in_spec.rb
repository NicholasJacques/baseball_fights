require 'rails_helper'

RSpec.describe "Use log in" do
  context "log in with valid inputs" do
    it "can log in with previously created account" do
      user = create(:default_user)

      visit login_path
      fill_in "session[username]", with: user.username
      fill_in "session[password]", with: "password"
      click_on "Log In"

      expect(page).to have_content("Welcome, Nick")
    end
  end
end