require 'rails_helper'

describe "user sees all categories" do
  scenario "when a user visits categories index page" do
    category_1 = create(:category)
    category_2 = create(:category)

    visit categories_path

    expect(page).to have_content(category_1.name)
    expect(page).to have_content(category_2.name)
    expect(page).to have_css("img[src*='#{category_1.image_url}']")
    expect(page).to have_css("img[src*='#{category_2.image_url}']")
  end
end
