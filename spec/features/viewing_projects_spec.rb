require "rails_helper"

RSpec.feature "Users can view tours" do

  let(:user) { FactoryGirl.create(:user) }
  #let(:tour) { FactoryGirl.create(:tour, name: "Sublime Text 3") }
  
  before do
   login_as(user)
   assign_role!(user, :viewer, tour)
  end

  scenario "with the tour details" do
    visit "/"
    click_link "Sublime Text 3"
    expect(page.current_url).to eq tour_url(tour)
  end
end
