require 'rails_helper'

describe "user sees a city" do
  scenario "when user visit cities show page" do
    city_1 = create(:city)
    city_2 = create(:city)

    visit city_path(city_2)

    expect(page).to have_content(city_2.name)
    expect(page).to have_css("img[src*='#{city_2.image_url}']")
    expect(page).to_not have_content(city_1.name)
  end
end
