require "application_system_test_case"

class AuthorsTest < ApplicationSystemTestCase
  setup do
    @author = authors(:one)
  end

  test "visiting the index" do
    visit authors_url
    assert_selector "h1", text: "Authors"
  end

  test "should create author" do
    visit authors_url
    click_on "New author"

    fill_in "Address", with: @author.address
    fill_in "Date of birth", with: @author.date_of_birth
    fill_in "Gender", with: @author.gender
    fill_in "Name", with: @author.name
    fill_in "Phone number", with: @author.phone_number
    click_on "Create Author"

    assert_text "Author was successfully created"
    click_on "Back"
  end

  test "should update Author" do
    visit author_url(@author)
    click_on "Edit this author", match: :first

    fill_in "Address", with: @author.address
    fill_in "Date of birth", with: @author.date_of_birth
    fill_in "Gender", with: @author.gender
    fill_in "Name", with: @author.name
    fill_in "Phone number", with: @author.phone_number
    click_on "Update Author"

    assert_text "Author was successfully updated"
    click_on "Back"
  end

  test "should destroy Author" do
    visit author_url(@author)
    click_on "Destroy this author", match: :first

    assert_text "Author was successfully destroyed"
  end
end
