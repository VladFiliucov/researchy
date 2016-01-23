require "rails_helper"

feature "create research", %q{
  In order to share my knowledge
  as an authenticated user
  I want to create researches
} do

  given(:user) { create(:user) }

  scenario "authenticated user creates research" do

    sign_in(user)

    visit researches_path
    click_on "Create Research"
    fill_in "Title", with: "My Research"
    fill_in "Category", with: "Ruby"
    fill_in "Description", with: "Extracting to new class"
    fill_in "Author", with: "Me"
    fill_in "Body", with: "blah blah blah"

    click_on "Create"

    expect(page).to have_content "Research successfully created."
  end

  scenario "non-authenticated user can't create research" do
    visit researches_path
    click_on "Create Research"

    expect(page).to have_content "You need to sign in or sign up before continuing"
  end
end
