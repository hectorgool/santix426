require "rails_helper"

RSpec.feature "Users can post tour" do

  scenario "with multiple attachments" do

    fill_in "Name", with: "Add documentation for blink tag"
    fill_in "Description", with: "The blink tag has a speed attribute"
    attach_file "File #1", Rails.root.join("spec/fixtures/speed.txt")
    attach_file "File #2", Rails.root.join("spec/fixtures/spin.txt")
    attach_file "File #3", Rails.root.join("spec/fixtures/gradient.txt")
    click_button "Create Ticket"
    expect(page).to have_content "Ticket has been created."
    
    within("#ticket .attachments") do
      expect(page).to have_content "speed.txt"
      expect(page).to have_content "spin.txt"
      expect(page).to have_content "gradient.txt"
    end

  end

end
