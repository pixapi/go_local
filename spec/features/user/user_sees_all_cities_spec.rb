require 'rails_helper'

describe "user sees all cities" do
  scenario "when a user visits cities index page" do
    city_1 = create(:city)
    city_2 = create(:city)

    visit cities_path

    expect(page).to have_content(city_1.name)
    expect(page).to have_content(city_2.name)
    expect(page).to have_css("img[src*='#{city_1.image_url}']")
    expect(page).to have_css("img[src*='#{city_2.image_url}']")
  end
end
