require "rails_helper"

RSpec.feature "Users can only see the appropriate links: " do

  let(:user) { FactoryGirl.create(:user) }
  let(:admin) { FactoryGirl.create(:user, :admin) }

  context "anonymous users" do
    scenario "cannot see the New Tour link" do
      visit "/"
      #expect(page).not_to have_link "New Tour"
      expect(page).not_to have_css('a i.new-tour') #santo
    end
  end

  context "regular users" do
    before { login_as(user) }
    scenario "cannot see the New Tour link" do
      visit "/"
      #expect(page).not_to have_link "New Tour"
      expect(page).not_to have_css('a i.new-tour') #santo
    end
  end

  context "admin users" do
    before { login_as(admin) }
    scenario "can see the New Tour link" do
      visit "/"
      #expect(page).to have_link "New Tour"
      expect(page).to have_css('a i.new-tour')
    end
  end

end