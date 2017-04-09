require 'rails_helper'

RSpec.describe "Admin visits a users page" do
  context "as admin" do
    it "allows admin to see all users" do
      user = create(:default_user)
      admin = create(:admin)

      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(admin)

      visit admin_users_path

      expect(page).to have_content(user.username)
      expect(page).to have_content(user.email)
    end

    it "default user does not see admin categories index" do
      user = create(:default_user)

      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

      visit admin_users_path

      expect(page).to_not have_content("Registered Users")
      expect(page).to have_content("The page you were looking for doesn't exist")
    end
  end
end
