require "rails_helper"

feature 'User sign in' do
  
  scenario "existing user sign_in" do
    User.create!(email: "email@example.com", password: '123456789')

    visit new_user_session_path
    fill_in "Email", with: "email@example.com"
    fill_in "Password", with: "123456789"
    click_on "Log in"

    expect(page).to have_content 'Signed in successfully'
    expect(current_path).to eq(root_path)
  end

  scenario "non existend user can't sign in" do
    visit new_user_session_path
    fill_in "Email", with: "email@example.com"
    fill_in "Password", with: "123456789"
    click_on "Log in"

    expect(page).to have_content "Invalid email or password"
    expect(current_path).to eq(new_user_session_path)
  end
end
