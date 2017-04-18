require 'rails_helper'

describe "user sees a business" do
  # def stub_omniauth
  # # first, set OmniAuth to run in test mode
  # OmniAuth.config.test_mode = true
  # # then, provide a set of fake oauth data that
  # # omniauth will use when a user tries to authenticate:
  # OmniAuth.config.mock_auth[:google] = OmniAuth::AuthHash.new({
  #   provider: "google",
  #   uid: "12345678910",
  #   info: {
  #     email: "jesse@mountainmantechnologies.com",
  #     first_name: "Jesse",
  #     last_name: "Spevack"
  #   },
  #   credentials: {
  #     token: "abcdefg12345",
  #     refresh_token: "12345abcdefg",
  #     expires_at: DateTime.now,
  #   }
  # })
  # end

  scenario "when a user visits the business show page" do
    mock_auth_hash

    visit root_path
    click_on 'Sign in with Google'

    expect(page).to have_content("Signed in as Amara Lovato")
    # expect(page).to have_content("Sign out")

  end
end
