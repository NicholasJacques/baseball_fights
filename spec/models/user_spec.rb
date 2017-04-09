require 'rails_helper'

RSpec.describe "user_moder" do
  context "attributes" do
  end
  context "validations" do
  end
  context "roles" do
    it "can be created as an admin" do
      user = create(:admin)

      expect(user.role).to eq("admin")
      expect(user.admin?).to be_truthy
    end

    it "can be created as a default user" do
      user = create(:default_user)

      expect(user.role).to eq("default")
      expect(user.default?).to be_truthy
    end
  end
end