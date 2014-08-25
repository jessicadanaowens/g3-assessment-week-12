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

  scenario "unsuccessfully" do
    visit root_url

    click_on "Add Movie"

    click_on "Add Movie"

    expect(page).to have_content ("Name can't be blank")
    expect(page).to have_content ("Year can't be blank")
    expect(page).to have_content ("Year is not a number")
    expect(page).to have_content ("Synopsis can't be blank")
  end

  scenario "user must enter an number in date field or get error" do
    visit root_url

    click_on "Add Movie"

    fill_in "Year", :with => "hello"

    click_on "Add Movie"

    expect(page).to have_content ("Year is not a number")

  end
end



