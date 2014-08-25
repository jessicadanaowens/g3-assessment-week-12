feature "User can add a movie" do
  scenario "successfully" do

    visit root_url

    expect(page).to have_content "Cageflix"
    expect(page).to have_content "Netflix for Nic Cage movies"

    click_on "Add Movie"
    fill_in "Name", :with => "Moonstruck"
    fill_in "Year", :with => "1987"
    fill_in "Synopsis", :with => "A love tale between a butcher and Cher"
    click_on "Add Movie"

    expect(page).to have_content ("Moonstruck")
  end
end



