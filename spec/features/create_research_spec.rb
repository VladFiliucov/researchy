require "rails_helper"

feature "create research", %q{
  In order to share my knowledge
  as an authenticated user
  I want to create researches
} do

  scenario "authenticated user creates research" do
    User.create!(email: "user@email.com", password: "12345678")

    visit new_user_session_path
    fill_in "Email", with: "user@email.com"
    fill_in "Password", with: "12345678"
    click_on "Log in"

    visit researches_path
    click_on "Create Research"
    fill_in "Title", with: "My Research"
    fill_in "Category", with: "Ruby"
    fill_in "Description", with: "Extracting to new class"
    fill_in "Body", with: "Very exciting research"
    click_on "Create"

    expect(page).to have_content "Research successfully created."
  end

  scenario "non-authenticated user can't create research" do
    visit researches_path
    click_on "Craete Research"

    expect(page).to have_content "You have to sign in or sign up before continuing"
  end
end
