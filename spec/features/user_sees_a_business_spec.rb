require 'rails_helper'

describe "user sees a business" do
  scenario "when a user visits the business show page" do
    city = create(:city)
    category = create(:category)
    business = create(:business, city: city, category: category)

    visit business_path(business)

    expect(page).to have_content(business.name)
    expect(page).to have_content(business.phone)
    expect(page).to have_content(business.description)
  end
end
