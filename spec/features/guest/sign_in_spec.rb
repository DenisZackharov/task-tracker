require "rails_helper"

feature "Sign In" do

  before do
    create :user, email: "john.doe@example.com", password: "123456"
  end

  scenario "Visitor Sign in with valid credentials" do
    sign_in("john.doe@example.com", "123456")
    expect(page).to have_content("Signed in successfully.")
  end

  scenario "Visitor Sign in with invalid credentials" do
    sign_in("denis.zaharov@flatstack.com", "wrong password")
    expect(page).to have_content("Sign in")
    expect(page).to have_content("Invalid Email or password")
  end
end
