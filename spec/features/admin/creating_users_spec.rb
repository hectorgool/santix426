require "rails_helper"

RSpec.feature "Admins can create new users" do

  let(:admin) { FactoryGirl.create(:user, :admin) }

  before do
    login_as(admin)
    visit "/"
    click_link "Admin"
    click_link "Users"
    click_link('new_user')
  end

  # scenario "with valid credentials" do
  #   fill_in "Firstname", with: "Firstname" #santo
  #   fill_in "Lastname", with: "Lastname" #santo
  #   fill_in "Email", with: "newbie@example.com"
  #   fill_in "Password", with: "password"
  #   fill_in "Password confirmation", with: "password" #santo
  #   click_button "Create User"
  #   expect(page).to have_content "User has been created."
  # end

end