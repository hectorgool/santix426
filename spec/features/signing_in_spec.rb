require "rails_helper"

RSpec.feature "Users can sign in" do

  let!(:user) { FactoryGirl.create(:user) }
  
  scenario "with valid credentials" do
    visit "/"
    click_link "Sign in"
    fill_in "Email", with: "#{user.email}"
    fill_in "Password", with: "password"
    click_button "Log in"
    expect(page).to have_content "#{user.email}"
    expect(page).to have_content "Log out"
  end

  scenario "with valid credentials" do
    visit "/"
    click_link "Sign in"
    fill_in "Email", with: "santo@santo.com"
    fill_in "Password", with: "asdfasdf"
    click_button "Log in"
    expect(page).to have_content "Invalid Email or password."
  end

end
