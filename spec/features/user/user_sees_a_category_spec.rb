require 'rails_helper'

describe "user sees a category" do
  scenario "when a user visits categories show page" do
    category_1 = create(:category)
    category_2 = create(:category)

    visit category_path(category_1)

    expect(page).to have_content(category_1.name)
    expect(page).to have_css("img[src*='#{category_1.image_url}']")
    expect(page).to_not have_content(category_2.name)
  end
end
