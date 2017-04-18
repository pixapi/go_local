require 'rails_helper'

describe "Admin visits categories index page" do
  context "as admin" do
    it "allows admin to see all categories" do
      admin = User.create(name: "paulsmith", role: 1)
      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(admin)

      visit admin_categories_path

      expect(page).to have_content("Admin Categories")
    end

    it "default user does not see admin categories index" do
      user = User.create(name: "luis_perez", role: 0)
      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

      visit admin_categories_path

      expect(page).to_not have_content("Admin Categories")
      expect(page).to have_content("The page you were looking for doesn't exist.")
    end
  end
end
