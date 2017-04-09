require 'rails_helper'

RSpec.describe "create a user" do
  context "with valid inputs" do
    it "can create as a user" do
      visit new_user_path
      fill_in "user[username]", with: "Nick"
      fill_in "user[password]", with: "password"
      fill_in "user[email]", with: "test@test.com"
      click_on "Create Account"

      expect(page).to have_content("Welcome, Nick")
    end
  end
end
