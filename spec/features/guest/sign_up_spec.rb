require "rails_helper"

feature "Sign Up" do

  let(:user_email) { "denis.zaharov@flatstack.com" }
  let(:registered_user) { User.find_by(email: user_email) }

  scenario "Visitor signs up" do
    visit new_user_registration_path

    fill_in "First name", with: "Denis"
    fill_in "Last name", with: "Zaharov"
    fill_in "Email", with: user_email
    fill_in "Password", with: "100100"
    fill_in "Password confirmation", with: "100100"

    click_button "Sign up"

    expect(page).to have_content("Welcome! You have signed up successfully.")
    expect(page).to have_link("Sign out")
  end
end
