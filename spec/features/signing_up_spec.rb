require "rails_helper"
#require 'spec_helper'

RSpec.feature "Users can sign up" do

  scenario "when providing valid details" do
    visit "/"
	click_link "Sign up"
	fill_in "Email", with: "test@example.com"
	fill_in "user_password", with: "password"
	fill_in "Password confirmation", with: "password"
	click_button "Sign up"
	expect(page).to have_content("You have signed up successfully.")
  end

  scenario "when providing empty details" do
    visit "/"
	click_link "Sign up"
	fill_in "Email", with: ""
	fill_in "user_password", with: ""
	fill_in "Password confirmation", with: ""
	click_button "Sign up"
	expect(page).to have_content("Email can't be blank")
	expect(page).to have_content("Password can't be blank")
  end

  scenario "when providing empty Email" do
    visit "/"
	click_link "Sign up"
	fill_in "Email", with: ""
	fill_in "user_password", with: "password"
	fill_in "Password confirmation", with: "password"
	click_button "Sign up"
	expect(page).to have_content("Email can't be blank")
  end

end
