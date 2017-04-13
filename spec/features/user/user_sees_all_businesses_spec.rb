require 'rails_helper'

describe "user sees all businesses" do
  scenario "when a user visits the businesses index page" do
    city = create(:city)
    category = create(:category)
    business_1 = create(:business, city: city, category: category)
    business_2 = create(:business, city: city, category: category)

    visit businesses_path

    expect(page).to have_content(business_1.name)
    expect(page).to have_css("img[src*='#{business_1.image_url}']")
    expect(page).to have_content(business_2.description)
    expect(page).to have_content(business_2.phone)
  end
end
